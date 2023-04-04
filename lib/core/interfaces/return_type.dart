import 'package:dartz/dartz.dart';

import '../errors/failures.dart';

typedef RepoResponse<T> = Either<Failure, T>;
