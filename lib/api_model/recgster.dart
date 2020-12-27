import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String firstName;
  String email;
  String number;
  String city;
  String area;
  DateTime createdAt;

  UserModel({
    this.firstName,
    this.number,
    this.area,
    this.city,
    this.createdAt,
    this.email,

  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    firstName: json["first_name"],
        email: json["email"],
    number: json["mobile"],
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "name": firstName,
        "job": email,
        "id": number,
        "createdAt": createdAt.toIso8601String(),
      };
}
