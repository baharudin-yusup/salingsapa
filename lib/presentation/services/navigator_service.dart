import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../core/errors/failures.dart';
import '../../core/utils/logger.dart';

abstract class NavigatorService {
  GlobalKey<NavigatorState> get navigatorKey;

  @optionalTypeArgs
  Future<Either<Failure, T?>> push<T extends Object?>(
      Widget Function(BuildContext context) builder);

  @optionalTypeArgs
  Future<Either<Failure, T?>> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  });

  @optionalTypeArgs
  Future<Either<Failure, T?>>
      pushReplacementNamed<T extends Object?, TO extends Object?>(
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
  Future<Either<Failure, T?>> push<T extends Object?>(
      Widget Function(BuildContext context) builder) async {
    try {
      final result = await Navigator.of(context!).push<T>(
        Platform.isIOS
            ? CupertinoPageRoute(builder: builder)
            : MaterialPageRoute(builder: builder),
      );
      return Right(result);
    } catch (error) {
      Logger.error(error, event: 'opening route');
      return Left(UnknownFailure(createdAt: DateTime.now()));
    }
  }

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
      return Left(UnknownFailure(createdAt: DateTime.now()));
    }
  }

  @override
  @optionalTypeArgs
  Future<Either<Failure, T?>>
      pushReplacementNamed<T extends Object?, TO extends Object?>(
          String routeName,
          {Object? arguments}) async {
    try {
      Logger.print('start navigating to $routeName');
      final result = await Navigator.of(context!)
          .pushReplacementNamed<T, TO>(routeName, arguments: arguments);
      return Right(result);
    } catch (error) {
      Logger.error(error, event: 'opening route');
      return Left(UnknownFailure(createdAt: DateTime.now()));
    }
  }

  @override
  Either<Failure, Unit> pop<T extends Object?>([T? result]) {
    try {
      Navigator.of(context!).pop(result);
      return const Right(unit);
    } catch (error) {
      Logger.error(error, event: 'opening route');
      return Left(UnknownFailure(createdAt: DateTime.now()));
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
      return Left(UnknownFailure(createdAt: DateTime.now()));
    }
  }
}
