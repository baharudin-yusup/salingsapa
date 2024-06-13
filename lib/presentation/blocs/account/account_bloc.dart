import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/utils/logger.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/usecases/delete_account.dart';
import '../../../domain/usecases/sign_out.dart';
import '../../../domain/usecases/stream_current_user.dart';
import '../../../domain/usecases/update_fcm_token.dart';
import '../../../domain/usecases/update_name.dart';
import '../../../domain/usecases/update_profile_picture.dart';
import '../../services/notification_service.dart';

part 'account_bloc.freezed.dart';

part 'account_event.dart';

part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final UpdateName _updateName;
  final UpdateProfilePicture _updateProfilePicture;
  final StreamCurrentUser _streamCurrentUser;
  final SignOut _signOut;
  final ImagePicker _imagePicker;
  final DeleteAccount _deleteAccount;
  final NotificationService _notificationService;
  final UpdateFcmToken _updateFcmToken;

  AccountBloc(
    this._updateName,
    this._streamCurrentUser,
    this._signOut,
    this._imagePicker,
    this._updateProfilePicture,
    this._deleteAccount,
    this._notificationService,
    this._updateFcmToken,
  ) : super(const AccountState.initial()) {
    on<_UpdateNameStarted>(_startUpdateName);
    on<_CurrentUserUpdated>(_updateUserData);
    on<_Started>(_getLatestData);
    on<_SignOutStarted>(_startSignOut);
    on<_PickImageStarted>(_editProfilePicture);
    on<_DeleteAccountStarted>(_startDeleteAccount);
    on<_UpdateFcmTokenStarted>(_startUpdateFcmToken);

    _streamCurrentUser().listen((userResult) {
      userResult.fold(
        (l) => null,
        (user) {
          if (isClosed) {
            return;
          }
          add(AccountEvent.currentUserUpdated(user));
          _notificationService.getToken().then((token) {
            if (token == null || isClosed) {
              return;
            }

            add(AccountEvent.updateFcmTokenStarted(token));
          });
        },
      );
    });

    _notificationService.onTokenChanges.listen(
      (token) {
        if (isClosed) {
          return;
        }
        add(AccountEvent.updateFcmTokenStarted(token));
      },
    );
  }

  void _getLatestData(_Started event, Emitter<AccountState> emit) async {
    final currentUserResult = await _streamCurrentUser().last;
    currentUserResult.fold(
      (l) => null,
      (user) => add(AccountEvent.currentUserUpdated(user)),
    );
  }

  void _startUpdateName(
      _UpdateNameStarted event, Emitter<AccountState> emit) async {
    final prevName = state.map(
      initial: (state) => state.name,
      updateInProgress: (state) => state.name,
      updateFailure: (state) => state.name,
      deleteAccountSuccess: (_) => null,
    );
    final newName = event.name;
    state.when(
      initial: (_, phoneNumber, profilePictureUrl) {
        emit(
          AccountState.updateInProgress(
            name: newName,
            phoneNumber: phoneNumber,
            profilePictureUrl: profilePictureUrl,
          ),
        );
      },
      updateInProgress: (_, phoneNumber, profilePictureUrl) {
        emit(
          AccountState.updateInProgress(
            name: newName,
            phoneNumber: phoneNumber,
            profilePictureUrl: profilePictureUrl,
          ),
        );
      },
      updateFailure: (_, phoneNumber, profilePictureUrl, __) {
        emit(
          AccountState.updateInProgress(
            name: newName,
            phoneNumber: phoneNumber,
            profilePictureUrl: profilePictureUrl,
          ),
        );
      },
      deleteAccountSuccess: () {},
    );

    final result = await _updateName(newName);

    result.fold(
      (failure) {
        state.when(
          initial: (_, phoneNumber, profilePictureUrl) {
            emit(
              AccountState.updateFailure(
                name: prevName,
                phoneNumber: phoneNumber,
                profilePictureUrl: profilePictureUrl,
                errorMessage: failure.errorMessage,
              ),
            );
          },
          updateInProgress: (_, phoneNumber, profilePictureUrl) {
            emit(
              AccountState.updateFailure(
                name: prevName,
                phoneNumber: phoneNumber,
                profilePictureUrl: profilePictureUrl,
                errorMessage: failure.errorMessage,
              ),
            );
          },
          updateFailure: (_, phoneNumber, profilePictureUrl, __) {
            emit(
              AccountState.updateFailure(
                name: prevName,
                phoneNumber: phoneNumber,
                profilePictureUrl: profilePictureUrl,
                errorMessage: failure.errorMessage,
              ),
            );
          },
          deleteAccountSuccess: () {},
        );
      },
      (name) {
        state.when(
          initial: (_, phoneNumber, profilePictureUrl) {
            emit(
              AccountState.initial(
                name: name,
                phoneNumber: phoneNumber,
                profilePictureUrl: profilePictureUrl,
              ),
            );
          },
          updateInProgress: (_, phoneNumber, profilePictureUrl) {
            emit(
              AccountState.initial(
                name: name,
                phoneNumber: phoneNumber,
                profilePictureUrl: profilePictureUrl,
              ),
            );
          },
          updateFailure: (_, phoneNumber, profilePictureUrl, __) {
            emit(
              AccountState.initial(
                name: name,
                phoneNumber: phoneNumber,
                profilePictureUrl: profilePictureUrl,
              ),
            );
          },
          deleteAccountSuccess: () {},
        );
      },
    );
  }

  void _updateUserData(_CurrentUserUpdated event, Emitter<AccountState> emit) {
    final user = event.user;
    emit(
      AccountState.initial(
        name: user.name,
        phoneNumber: user.phoneNumber,
        profilePictureUrl: user.profilePictureUrl,
      ),
    );
  }

  void _startSignOut(_SignOutStarted event, Emitter<AccountState> emit) async {
    await _signOut();
  }

  void _editProfilePicture(
      _PickImageStarted event, Emitter<AccountState> emit) async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }

    state.when(
      initial: (name, phoneNumber, profilePictureUrl) {
        emit(
          AccountState.updateInProgress(
            name: name,
            phoneNumber: phoneNumber,
            profilePictureUrl: profilePictureUrl,
          ),
        );
      },
      updateInProgress: (name, phoneNumber, profilePictureUrl) {
        emit(
          AccountState.updateInProgress(
            name: name,
            phoneNumber: phoneNumber,
            profilePictureUrl: profilePictureUrl,
          ),
        );
      },
      updateFailure: (name, phoneNumber, profilePictureUrl, _) {
        emit(
          AccountState.updateInProgress(
            name: name,
            phoneNumber: phoneNumber,
            profilePictureUrl: profilePictureUrl,
          ),
        );
      },
      deleteAccountSuccess: () {},
    );

    final imageBytes = await image.readAsBytes();
    final updateProfilePictureResult = await _updateProfilePicture(imageBytes);
    updateProfilePictureResult.fold(
      (l) => null,
      (profilePictureUrl) => state.when(
        initial: (name, phoneNumber, _) {
          emit(
            AccountState.initial(
              name: name,
              phoneNumber: phoneNumber,
              profilePictureUrl: profilePictureUrl,
            ),
          );
        },
        updateInProgress: (name, phoneNumber, _) {
          emit(
            AccountState.initial(
              name: name,
              phoneNumber: phoneNumber,
              profilePictureUrl: profilePictureUrl,
            ),
          );
        },
        updateFailure: (name, phoneNumber, _, __) {
          emit(
            AccountState.initial(
              name: name,
              phoneNumber: phoneNumber,
              profilePictureUrl: profilePictureUrl,
            ),
          );
        },
        deleteAccountSuccess: () {},
      ),
    );
  }

  void _startDeleteAccount(
      _DeleteAccountStarted event, Emitter<AccountState> emit) async {
    final deleteAccountResult = await _deleteAccount();

    deleteAccountResult.fold(
      (failure) => state.when(
        initial: (name, phoneNumber, profilePictureUrl) {
          emit(
            AccountState.updateFailure(
              name: name,
              phoneNumber: phoneNumber,
              profilePictureUrl: profilePictureUrl,
              errorMessage: failure.errorMessage,
            ),
          );
        },
        updateInProgress: (name, phoneNumber, profilePictureUrl) {
          emit(
            AccountState.updateFailure(
              name: name,
              phoneNumber: phoneNumber,
              profilePictureUrl: profilePictureUrl,
              errorMessage: failure.errorMessage,
            ),
          );
        },
        updateFailure: (name, phoneNumber, profilePictureUrl, _) {
          emit(
            AccountState.updateFailure(
              name: name,
              phoneNumber: phoneNumber,
              profilePictureUrl: profilePictureUrl,
              errorMessage: failure.errorMessage,
            ),
          );
        },
        deleteAccountSuccess: () {},
      ),
      (_) => emit(const AccountState.deleteAccountSuccess()),
    );
  }

  void _startUpdateFcmToken(
      _UpdateFcmTokenStarted event, Emitter<AccountState> emit) {
    Logger.print('Start checking FCM token: ${event.token}');
    _updateFcmToken(event.token);
  }
}
