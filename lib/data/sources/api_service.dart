import 'package:dio/dio.dart';

import '../../core/errors/exceptions.dart';
import '../../core/utils/logger.dart';
import '../constants/api_constant.dart';
import '../models/apis/create_room_request.dart';
import '../models/apis/create_room_response.dart';
import '../models/apis/join_room_response.dart';
import '../plugins/network_plugin.dart';

abstract class ApiService {
  Future<CreateRoomResponse> createRoom(CreateRoomRequest request);

  Future<JoinRoomResponse> joinRoom(String roomId);

  Future<void> leaveRoom(String roomId);
}

class ApiServiceImpl implements ApiService {
  final NetworkPlugin _networkPlugin;

  ApiServiceImpl(this._networkPlugin);

  @override
  Future<CreateRoomResponse> createRoom(CreateRoomRequest request) async {
    try {
      final json = (await _networkPlugin.post(
        path: ApiConstant.createRoom(),
        body: request.toJson(),
      ))
          .data!;

      return CreateRoomResponse.fromJson(json);
    } on DioException catch (error) {
      Logger.error(error.response?.data,
          event: '(datasource) calling ${ApiConstant.createRoom()} API');
      throw ServerException(type: ServerExceptionType.unknown);
    } catch (error) {
      Logger.error(error,
          event: '(datasource) calling ${ApiConstant.createRoom()} API');
      throw GeneralException();
    }
  }

  @override
  Future<JoinRoomResponse> joinRoom(String roomId) async {
    final url = ApiConstant.joinRoom(roomId);
    try {
      final json = (await _networkPlugin.post(path: url)).data!;
      return JoinRoomResponse.fromJson(json);
    } on DioException catch (error) {
      Logger.error(error.response?.data,
          event: '(datasource) calling $url API');
      throw ServerException(type: ServerExceptionType.unknown);
    } catch (error) {
      Logger.error(error, event: '(datasource) calling $url API');
      throw ServerException(type: ServerExceptionType.unknown);
    }
  }

  @override
  Future<void> leaveRoom(String roomId) async {
    final url = ApiConstant.leaveRoom(roomId);
    try {
      await _networkPlugin.post(path: url);
    } on DioException catch (error) {
      Logger.error(error.response?.data,
          event: '(datasource) calling $url API');
      throw ServerException(type: ServerExceptionType.unknown);
    } catch (error) {
      Logger.error(error, event: '(datasource) calling $url API');
      throw ServerException(type: ServerExceptionType.unknown);
    }
  }
}
