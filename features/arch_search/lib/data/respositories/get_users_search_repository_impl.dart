import 'package:dartz/dartz.dart';

import '../../domain/domain.dart';
import '../data.dart';

class GetUsersSearchRepositoryImpl implements GetUsersSearchRepository {
  final GetUsersSearchDataSource datasource;

  GetUsersSearchRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, List<UserEntity>>> getUsers(String query) async {
    try {
      final result = await datasource.getUsers(query);
      // TODO: parse UserModel to UserEntity
      final users = result.map((e) => e.toEntity()).toList();
      return Right(users);
    } on ServerFailure catch (e) {
      throw Left(Failure(e.message));
    }
  }
}
