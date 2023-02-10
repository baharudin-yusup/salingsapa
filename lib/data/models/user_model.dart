import 'package:firebase_auth/firebase_auth.dart' as fb;

import '../../domain/entities/user.dart';

typedef UserModel = fb.User;

extension UserModelToEntity on UserModel {
  User toEntity() {
    return User(uid, phoneNumber!, displayName ?? phoneNumber!);
  }
}
