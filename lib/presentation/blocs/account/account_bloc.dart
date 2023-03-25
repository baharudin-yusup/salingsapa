import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:salingsapa/domain/usecases/sign_out.dart';
import 'package:salingsapa/domain/usecases/stream_current_user.dart';
import 'package:salingsapa/domain/usecases/update_name.dart';
import 'package:salingsapa/domain/usecases/update_profile_picture.dart';
import 'package:salingsapa/presentation/screens/skeleton_screen.dart';
import 'package:salingsapa/presentation/services/navigator_service.dart';
import 'package:salingsapa/presentation/services/ui_service.dart';

import '../../../domain/entities/user.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc(
    this._updateName,
    this._streamCurrentUser,
    this._signOut,
    this._navigatorService,
    this._imagePicker,
    this._updateProfilePicture,
    this._uiService,
  ) : super(const AccountState.initial()) {
    _streamCurrentUser().listen((userResult) {
      userResult.fold(
        (l) => null,
        (user) => add(AccountEvent.currentUserUpdated(user)),
      );
    });
    on<_UpdateNameStarted>(_startUpdateName);
    on<_CurrentUserUpdated>(_updateUserData);
    on<_Started>(_getLatestData);
    on<_SignOutStarted>(_startSignOut);
    on<_PickImageStarted>(_editProfilePicture);
  }

  final UpdateName _updateName;
  final UpdateProfilePicture _updateProfilePicture;
  final StreamCurrentUser _streamCurrentUser;
  final SignOut _signOut;
  final NavigatorService _navigatorService;
  final UiService _uiService;
  final ImagePicker _imagePicker;

  void _getLatestData(_Started event, Emitter<AccountState> emit) async {
    final currentUserResult = await _streamCurrentUser().last;
    currentUserResult.fold(
      (l) => null,
      (user) => add(AccountEvent.currentUserUpdated(user)),
    );
  }

  void _startUpdateName(
      _UpdateNameStarted event, Emitter<AccountState> emit) async {
    final previousName = state.name;
    emit(AccountState.updateInProgress(
        name: event.name,
        phoneNumber: state.phoneNumber,
        profilePictureUrl: state.profilePictureUrl));

    final result = await _updateName(event.name);

    result.fold(
        (failure) => emit(AccountState.updateFailure(
            name: previousName,
            phoneNumber: state.phoneNumber,
            profilePictureUrl: state.profilePictureUrl,
            errorMessage: failure.errorMessage)),
        (updatedName) => emit(AccountState.initial(
            name: updatedName,
            phoneNumber: state.phoneNumber,
            profilePictureUrl: state.profilePictureUrl)));
  }

  void _updateUserData(_CurrentUserUpdated event, Emitter<AccountState> emit) {
    final user = event.user;
    emit(AccountState.initial(
      name: user.name,
      phoneNumber: user.phoneNumber,
      profilePictureUrl: user.profilePictureUrl,
    ));
  }

  void _startSignOut(_SignOutStarted event, Emitter<AccountState> emit) async {
    final signOutResult = await _signOut();

    signOutResult.fold(
      (l) => null,
      (_) => _navigatorService.pushNamedAndRemoveUntil(
          RootScreen.routeName, (route) => false),
    );
  }

  void _editProfilePicture(
      _PickImageStarted event, Emitter<AccountState> emit) async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }

    emit(AccountState.updateInProgress(
        name: state.name,
        phoneNumber: state.phoneNumber,
        profilePictureUrl: state.profilePictureUrl));

    final imageBytes = await image.readAsBytes();
    final updateProfilePictureResult = await _updateProfilePicture(imageBytes);
    updateProfilePictureResult.fold(
        (l) => null,
        (profilePictureUrl) => emit(AccountState.initial(
              name: state.name,
              phoneNumber: state.phoneNumber,
              profilePictureUrl: profilePictureUrl,
            )));
  }
}
