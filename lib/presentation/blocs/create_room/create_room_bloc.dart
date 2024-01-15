
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/failures.dart';
import '../../../domain/entities/contact.dart';
import '../../../domain/entities/room.dart';
import '../../../domain/usecases/create_room.dart';

part 'create_room_bloc.freezed.dart';

part 'create_room_event.dart';

part 'create_room_state.dart';

class CreateRoomBloc extends Bloc<CreateRoomEvent, CreateRoomState> {
  final CreateRoom _createRoom;

  CreateRoomBloc(
    this._createRoom, {
    required Contact contact,
  }) : super(CreateRoomState.initial(contact)) {
    on<_Started>(_startCreateRoom);
    on<_RetryStarted>(_retryCreateRoom);

    add(CreateRoomEvent.initStarted());
  }

  void _startCreateRoom(_Started event, Emitter<CreateRoomState> emit) async {
    state.maybeWhen(
      initial: (contact) {
        emit(CreateRoomState.inProgress(contact));
      },
      failure: (contact, failure) {
        emit(CreateRoomState.inProgress(contact));
      },
      orElse: () {},
    );
    final createRoomResult = await _createRoom(state.contact);
    createRoomResult.fold(
      (failure) => emit(CreateRoomState.failure(state.contact, failure)),
      (room) => emit(CreateRoomState.success(state.contact, room)),
    );
  }

  void _retryCreateRoom(
      _RetryStarted event, Emitter<CreateRoomState> emit) async {
    add(CreateRoomEvent.initStarted());
  }
}
