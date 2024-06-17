import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/utils/logger.dart';
import '../../constants/firestore_constant.dart';
import '../../models/api/caption_model.dart';
import '../../models/exception/exception.dart';

abstract class CaptionRemoteDataSource {
  Future<void> init(String roomId);

  Future<void> enable();

  Future<void> disable();

  // Stream the guest captions
  Stream<List<CaptionModel>> stream();

  Future<void> upload(CaptionModel caption);
}

const _tagName = 'CaptionRemoteDataSource';

class CaptionRemoteDataSourceImpl implements CaptionRemoteDataSource {
  CaptionRemoteDataSourceImpl(this._firestore, this._auth);

  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  Query<Map<String, dynamic>>? _guestCaptionQuery;

  Query<Map<String, dynamic>> get guestCaptionQuery {
    if (_guestCaptionQuery == null) throw const ServerException();
    return _guestCaptionQuery!;
  }

  CollectionReference<Map<String, dynamic>>? _captionCollectionReference;

  CollectionReference<Map<String, dynamic>> get reference {
    if (_captionCollectionReference == null) {
      const exception = ServerException(message: 'reference-is-null');
      throw exception;
    }
    return _captionCollectionReference!;
  }

  @override
  Future<void> init(String roomId) async {
    final roomQuerySnapshot = await _firestore
        .collection(FirestoreRoomConstant.collectionName)
        .where(FirestoreRoomConstant.roomId, isEqualTo: roomId)
        .get();

    /// Throw and error because the room is not found
    /// or the room is not unique
    if (roomQuerySnapshot.size != 1) throw const ServerException();

    // Create the caption collection reference
    _captionCollectionReference = roomQuerySnapshot.docs[0].reference
        .collection(FirestoreCaptionConstant.captionCollectionName);
  }

  @override
  Future<void> enable() async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) {
        const exception = ServerException(message: 'current-user-is-null');
        Logger.error(exception, event: 'getting user id');
        throw exception;
      }

      _guestCaptionQuery = reference.where(FirestoreCaptionConstant.userIdKey,
          isNotEqualTo: currentUser.uid);
    } on ServerException {
      rethrow;
    } catch (error) {
      Logger.error(error, event: 'enabling caption feature (data source)');
      throw const ServerException();
    }
  }

  @override
  Future<void> disable() async {
    _guestCaptionQuery = null;
  }

  @override
  Stream<List<CaptionModel>> stream() {
    return guestCaptionQuery.snapshots().map((snapshot) {
      final captions = <CaptionModel>[];

      for (final doc in snapshot.docs) {
        final json = doc.data();
        try {
          captions.add(CaptionModel.fromJson(json));
        } catch (error) {
          Logger.error(error, event: 'creating caption model');
        }
      }

      captions.sort((a, b) => a.createdAt.compareTo(b.createdAt));
      return captions;
    });
  }

  @override
  Future<void> upload(CaptionModel caption) async {
    final currentUser = _auth.currentUser;
    if (currentUser == null) {
      const exception = ServerException(message: 'current-user-is-null');
      Logger.error(exception, event: 'getting user id');
      throw exception;
    }

    /// Check whether is current local caption or not.
    /// If this is local caption then assign the
    /// user id before we uploading
    if (caption.isSelfCaption) {
      caption = caption.copyWith(userId: currentUser.uid);
    }

    Logger.print('userId (${caption.isSelfCaption}): ${caption.userId}',
        name: _tagName);

    // Handle upload the caption
    final snapshot = await reference
        .where(FirestoreCaptionConstant.captionId, isEqualTo: caption.captionId)
        .get();
    // Create new caption
    if (snapshot.docs.isEmpty) {
      await reference.add(caption.toJson());
      return;
    }
    // Update the caption
    if (snapshot.size == 1) {
      await snapshot.docs[0].reference.update(caption.toJson());
      return;
    }

    /// Show error because the caption id is not unique
    /// and delete all this non-unique caption
    /// and create the unique caption
    Logger.error(
      'data is not unique, start deleting first',
      event: 'uploading caption',
      name: _tagName,
    );
    for (var doc in snapshot.docs) {
      await doc.reference.delete();
    }
    await reference.add(caption.toJson());
  }
}
