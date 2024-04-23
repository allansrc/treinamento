import 'package:dio/dio.dart';

import '../../../domain/domain.dart';
import '../../data.dart';

class GetUsersSearchDataSourceImpl implements GetUsersSearchDataSource {
  final Dio dio;

  GetUsersSearchDataSourceImpl(this.dio);

  @override
  Future<List<UserModel>> getUsers(String query) async {
    try {
      var result = await dio.get(
        "https://api.github.com/search/users?q=${query.trim().replaceAll(' ', '+')}",
      );

      if (result.statusCode == 200) {
        var jsonList = result.data['items'] as List;
        var list = jsonList
            .map((item) => UserModel(
                  username: item['login'],
                  picture: item['avatar_url'],
                  url: item['url'],
                  name: item['login'],
                ))
            .toList();
        return list;
      } else {
        throw ServerFailure('error');
      }
    } on DioException catch (e) {
      throw ServerFailure(e.message ?? 'error');
    }
  }
}
