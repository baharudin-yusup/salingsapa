import 'package:firebase_auth/firebase_auth.dart';

import '../../core/errors/exceptions.dart';
import '../../core/utils/logger.dart';

extension FirebaseAuthSpecialMethod on FirebaseAuth {
  String get userId {
    final currentUser = this.currentUser;
    if (currentUser == null) {
      final exception = ServerException(message: 'current-user-is-null');
      Logger.error(exception, event: 'getting user id');
      throw exception;
    }

    return currentUser.uid;
  }
}
