import '../data.dart';

abstract class GetUsersSearchDataSource {
  Future<List<UserModel>> getUsers(String query);
}
