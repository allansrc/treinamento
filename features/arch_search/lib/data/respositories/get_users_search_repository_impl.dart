import 'package:dartz/dartz.dart';

import '../../domain/domain.dart';
import '../data.dart';

class GetUsersSearchRepositoryImpl implements GetUsersSearchRepository {
  final GetUsersSearchDataSource datasource;

  GetUsersSearchRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, List<UserEntity>>> getUsers(String query) async {
    try {
      final users = await datasource.getUsers(query);
      // TODO: parse UserModel to UserEntity
      return users;
    } on ServerFailure catch (e) {
      throw e;
    }
  }
}
