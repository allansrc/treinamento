class UserModel {
  final String name;
  final String email;
  final String phone;
  final String picture;

  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.picture,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['login'],
      email: json['email'],
      phone: json['phone'],
      picture: json['avatar_url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'login': name,
      'email': email,
      'phone': phone,
      'avatar_url': picture,
    };
  }
}
