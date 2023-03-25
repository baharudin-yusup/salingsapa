import 'package:equatable/equatable.dart';
import 'package:salingsapa/domain/entities/contact.dart';

class VideoCall extends Equatable {
  final String channelName;
  final Contact caller;

  const VideoCall({
    required this.channelName,
    required this.caller,
  });

  @override
  List<Object?> get props => [
        channelName,
        caller,
      ];
}
