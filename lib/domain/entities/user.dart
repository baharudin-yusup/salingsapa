import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String phoneNumber;
  final String name;

  const User(
    this.id,
    this.phoneNumber,
    this.name,
  );

  @override
  List<Object?> get props => [id, phoneNumber, name];
}
