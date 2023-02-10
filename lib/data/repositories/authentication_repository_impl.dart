import 'package:dartz/dartz.dart';
import 'package:saling_sapa/core/errors/exceptions.dart';
import 'package:saling_sapa/core/errors/failures.dart';
import 'package:saling_sapa/data/models/user_model.dart';
import 'package:saling_sapa/data/sources/authentication_local_data_source.dart';
import 'package:saling_sapa/data/sources/authentication_remote_data_source.dart';
import 'package:saling_sapa/domain/entities/user.dart';
import 'package:saling_sapa/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationLocalDataSource _localDataSource;
  final AuthenticationRemoteDatSource _remoteDatSource;

  AuthenticationRepositoryImpl(this._localDataSource, this._remoteDatSource);

  @override
  Future<Either<Failure, User>> verifyPhoneNumber(
      {required String phoneNumber}) async {
    try {
      final model =
          await _remoteDatSource.verifyPhoneNumber(phoneNumber: phoneNumber);
      return Right(model.toEntity());
    } on Exception catch (exception) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> verifyOtp({required String otp}) async {
    try {
      final model = await _remoteDatSource.verifyOtp(otp: otp);
      return Right(model.toEntity());
    } on Exception catch (exception) {
      return Left(ServerFailure());
    }
  }
}
