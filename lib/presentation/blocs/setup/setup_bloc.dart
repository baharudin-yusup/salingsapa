import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:saling_sapa/core/errors/failures.dart';

part 'setup_bloc.freezed.dart';
part 'setup_event.dart';
part 'setup_state.dart';

class SetupBloc extends Bloc<SetupEvent, SetupState> {
  SetupBloc() : super(const SetupState.inputPhoneNumberInitial()) {
    on<SetupEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
