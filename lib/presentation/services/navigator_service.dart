import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:saling_sapa/core/errors/failures.dart';

import '../../core/utils/logger.dart';

abstract class NavigatorService {
  GlobalKey<NavigatorState> get navigatorKey;

  @optionalTypeArgs
  Future<Either<Failure, T?>> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  });
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
}
