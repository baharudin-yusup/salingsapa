import '../../constants/cache_key.dart';
import '../../models/cache/string_cache_model.dart';
import '../../models/cache/user_cache_model.dart';
import '../cache/cache_service.dart';

abstract class UserLocalDataSource {
  Future<UserProfileCacheModel> getCurrentUser();

  Future<void> updateName(String name);

  Future<void> updateFcmToken(String token);

  Future<void> clearCache();
}

class UserLocalDataSourceImpl implements UserLocalDataSource {
  final CacheService _cacheService;

  UserLocalDataSourceImpl(this._cacheService);

  @override
  Future<void> clearCache() async {
    await _cacheService.remove(CacheKey.currentUserProfile);
  }

  @override
  Future<UserProfileCacheModel> getCurrentUser() async {
    final json = _cacheService.getJson(CacheKey.currentUserProfile);

    if (json == null) {
      const initialValue = UserProfileCacheModel();
      await _cacheService.setJson(
          CacheKey.currentUserProfile, initialValue.toJson());
      return initialValue;
    }

    return UserProfileCacheModel.fromJson(json);
  }

  @override
  Future<void> updateFcmToken(String token) async {
    final oldValue = await getCurrentUser();
    final newValue = oldValue.copyWith(
      fcmToken: oldValue.fcmToken?.copyWith(
            value: token,
            localValueUpdatedAt: DateTime.now(),
          ) ??
          StringCacheModel(
            value: token,
            localValueUpdatedAt: DateTime.now(),
          ),
    );

    await _cacheService.setJson(CacheKey.currentUserProfile, newValue.toJson());
  }

  @override
  Future<void> updateName(String name) async {
    final oldValue = await getCurrentUser();
    final newValue = oldValue.copyWith(
      name: oldValue.name?.copyWith(
            value: name,
            localValueUpdatedAt: DateTime.now(),
          ) ??
          StringCacheModel(
            value: name,
            localValueUpdatedAt: DateTime.now(),
          ),
    );

    await _cacheService.setJson(CacheKey.currentUserProfile, newValue.toJson());
  }
}
