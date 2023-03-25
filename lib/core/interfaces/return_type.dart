import 'package:dartz/dartz.dart';
import 'package:salingsapa/core/errors/failures.dart';

typedef RepoResponse<T> = Either<Failure, T>;
