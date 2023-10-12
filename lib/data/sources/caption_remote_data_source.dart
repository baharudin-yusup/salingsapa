import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../core/errors/exceptions.dart';
import '../../core/utils/logger.dart';
import '../constants/firestore_constant.dart';
import '../extensions/firebase_auth.dart';
import '../models/caption_model.dart';

abstract class CaptionRemoteDataSource {
  Future<void> init(final String invitationId);

  Future<void> enable();

  Future<void> disable();

  Stream<List<CaptionModel>> stream();

  Future<void> upload(CaptionModel caption);
}

const _tagName = 'CaptionRemoteDataSource';

class CaptionRemoteDataSourceImpl implements CaptionRemoteDataSource {
  CaptionRemoteDataSourceImpl(this._firestore, this._auth);

  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  Query<Map<String, dynamic>>? _query;

  Query<Map<String, dynamic>> get query {
    if (_query == null) throw ServerException();
    return _query!;
  }

  CollectionReference<Map<String, dynamic>>? _ref;

  CollectionReference<Map<String, dynamic>> get reference {
    if (_ref == null) {
      final exception = ServerException(message: 'reference-is-null');
      throw exception;
    }
    return _ref!;
  }

  @override
  Future<void> init(final String invitationId) async {
    final queryResult = await _firestore
        .collection(FirestoreConstant.videoCallCollectionName)
        .where('invitationId', isEqualTo: invitationId)
        .get();

    if (queryResult.size != 1) throw ServerException();

    _ref = queryResult.docs[0].reference
        .collection(FirestoreConstant.captionCollectionName);
  }

  @override
  Future<void> enable() async {
    try {
      final userId = _auth.userId;
      _query = reference.where('userId', isNotEqualTo: userId);
    } on ServerException {
      rethrow;
    } catch (error) {
      Logger.error(error, event: 'enabling caption feature (data source)');
      throw ServerException();
    }
  }

  @override
  Future<void> disable() async {
    _query = null;
  }

  @override
  Stream<List<CaptionModel>> stream() {
    return query.snapshots().map((snapshot) {
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
    if (caption.isSelfCaption) {
      caption = caption.addUserId(_auth.userId);
    }

    Logger.print('userId (${caption.isSelfCaption}): ${caption.userId}',
        name: _tagName);

    final snapshot =
        await reference.where('captionId', isEqualTo: caption.captionId).get();

    if (snapshot.docs.isEmpty) {
      await reference.add(caption.toJson());
      return;
    }

    if (snapshot.size == 1) {
      await snapshot.docs[0].reference.update(caption.toJson());
      return;
    }

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
