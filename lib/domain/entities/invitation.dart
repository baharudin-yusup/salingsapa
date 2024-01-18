import 'package:equatable/equatable.dart';

import 'contact.dart';
import 'room.dart';

class Invitation extends Equatable {
  final Room room;
  final Contact? callerContact;
  final bool shouldPlayRingtone;

  const Invitation({
    required this.room,
    required this.callerContact,
    required this.shouldPlayRingtone,
  });

  @override
  List<Object?> get props => [
        room,
        callerContact,
        shouldPlayRingtone,
      ];

  Invitation copyWith(Contact? contact) => Invitation(
        room: room,
        callerContact: contact,
        shouldPlayRingtone: shouldPlayRingtone,
      );
}
