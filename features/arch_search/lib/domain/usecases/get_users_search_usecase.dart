import 'package:dartz/dartz.dart';

import '../domain.dart';

abstract class GetUsersSearchUseCase {
  Future<Either<Failure, List<UserEntity>>> getUsers(String query);
}
