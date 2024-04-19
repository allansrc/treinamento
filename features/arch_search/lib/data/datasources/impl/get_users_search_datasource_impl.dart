import 'package:dio/dio.dart';

import '../../../domain/domain.dart';
import '../../data.dart';

class GetUsersSearchDatasourceImpl implements GetUsersSearchDataSource {
  final Dio dio;

  GetUsersSearchDatasourceImpl(this.dio);

  @override
  Future<List<UserModel>> getUsers(String query) async {
    try {
      final response = await dio.get(
        '/search/users',
        queryParameters: {
          'q': query,
        },
      );

      if (response.statusCode == 200) {
        final List<UserModel> users = (response.data['items'] as List)
            .map((e) => UserModel.fromJson(e))
            .toList();

        return users;
      } else {
        throw ServerFailure('error');
      }
    } on DioError catch (e) {
      throw ServerFailure(e.message ?? 'error');
    }
  }
}
