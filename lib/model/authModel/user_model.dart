class UserModel {
  final String token, email, name;

  UserModel({required this.token,required this.email, required this.name});
  factory UserModel.fromJson(json) {
    return UserModel(token: json["token"],
        email: json["user"]["email"], name: json["user"]["name"]);
  }
}
