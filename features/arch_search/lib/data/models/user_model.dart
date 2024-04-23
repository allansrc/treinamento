import '../../domain/domain.dart';

class UserModel {
  final String name;
  final String username;
  final String picture;
  final String url;

  UserModel({
    required this.name,
    required this.username,
    required this.picture,
    required this.url,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['login'],
      username: json['login'],
      picture: json['avatar_url'],
      url: json['url'],
    );
  }

  UserEntity toEntity() => UserEntity(
        name: name,
        username: username,
        picture: picture,
        url: url,
      );

  Map<String, dynamic> toJson() {
    return {
      'login': name,
      'avatar_url': picture,
      'url': url,
    };
  }
}
