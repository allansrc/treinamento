import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../../domain.dart';

class GetUsersSearchUseCaseImpl implements GetUsersSearchUseCase {
  final GetUsersSearchRepository _userRepository;

  GetUsersSearchUseCaseImpl(this._userRepository);

  @override
  Future<Either<Failure, List<UserEntity>>> getUsers(String query) async {
    return _userRepository.getUsers(query);
  }
}
