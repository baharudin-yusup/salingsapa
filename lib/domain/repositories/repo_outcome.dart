import 'package:dartz/dartz.dart';

import '../errors/failure.dart';

typedef RepoOutcome<T> = Either<Failure, T>;
