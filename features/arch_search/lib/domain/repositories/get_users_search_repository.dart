import 'package:dartz/dartz.dart';

import '../domain.dart';

abstract class GetUsersSearchRepository {
  Future<Either<Failure, List<UserEntity>>> getUsers(String query);
}
