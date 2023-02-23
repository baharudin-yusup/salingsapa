import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:salingsapa/core/errors/failures.dart';

import '../../core/utils/logger.dart';

abstract class NavigatorService {
  GlobalKey<NavigatorState> get navigatorKey;

  @optionalTypeArgs
  Future<Either<Failure, T?>> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  });

  @optionalTypeArgs
  Future<Either<Failure, T?>> pushNamedAndRemoveUntil<T extends Object?>(
    String newRouteName,
    RoutePredicate predicate, {
    Object? arguments,
  });

  @optionalTypeArgs
  Either<Failure, Unit> pop<T extends Object?>([T? result]);
}

class NavigatorServiceImpl implements NavigatorService {
  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  BuildContext? get context => navigatorKey.currentContext;

  @override
  @optionalTypeArgs
  Future<Either<Failure, T?>> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) async {
    try {
      final result = await Navigator.of(context!)
          .pushNamed<T>(routeName, arguments: arguments);
      return Right(result);
    } catch (error) {
      Logger.error(error, event: 'opening route');
      return Left(UnknownFailure());
    }
  }

  @override
  Either<Failure, Unit> pop<T extends Object?>([T? result]) {
    try {
      Navigator.of(context!).pop(result);
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: 'opening route');
      return Left(UnknownFailure());
    }
  }

  @override
  @optionalTypeArgs
  Future<Either<Failure, T?>> pushNamedAndRemoveUntil<T extends Object?>(
    String newRouteName,
    RoutePredicate predicate, {
    Object? arguments,
  }) async {
    try {
      final result = await Navigator.of(context!).pushNamedAndRemoveUntil<T>(
          newRouteName, predicate,
          arguments: arguments);
      return Right(result);
    } catch (error) {
      Logger.error(error, event: 'opening route');
      return Left(UnknownFailure());
    }
  }
}
