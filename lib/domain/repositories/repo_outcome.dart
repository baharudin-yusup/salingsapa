import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';

typedef RepoOutcome<T> = Either<Failure, T>;
