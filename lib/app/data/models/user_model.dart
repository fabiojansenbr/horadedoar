// To parse this JSON data, do
//
//     final userModel = userModelFromMap(jsonString);

import 'dart:convert';

UserModel userModelFromMap(String str) => UserModel.fromMap(json.decode(str));

String userModelToMap(UserModel data) => json.encode(data.toMap());

class UserModel {
  UserModel({
    this.jwt,
    this.user,
  });

  final String jwt;
  final User user;

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        jwt: json["jwt"] == null ? null : json["jwt"],
        user: json["user"] == null ? null : User.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "jwt": jwt == null ? null : jwt,
        "user": user == null ? null : user.toMap(),
      };
}

class User {
  User({
    this.id,
    this.username,
    this.email,
    this.provider,
    this.confirmed,
    this.blocked,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.type,
    this.fullName,
  });

  final int id;
  final String username;
  final String email;
  final String provider;
  final bool confirmed;
  final dynamic blocked;
  final Role role;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String type;
  final String fullName;

  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"] == null ? null : json["id"],
        username: json["username"] == null ? null : json["username"],
        email: json["email"] == null ? null : json["email"],
        provider: json["provider"] == null ? null : json["provider"],
        confirmed: json["confirmed"] == null ? null : json["confirmed"],
        blocked: json["blocked"],
        role: json["role"] == null ? null : Role.fromMap(json["role"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        type: json["type"] == null ? null : json["type"],
        fullName: json["full_name"] == null ? null : json["full_name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "username": username == null ? null : username,
        "email": email == null ? null : email,
        "provider": provider == null ? null : provider,
        "confirmed": confirmed == null ? null : confirmed,
        "blocked": blocked,
        "role": role == null ? null : role.toMap(),
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "type": type == null ? null : type,
        "full_name": fullName == null ? null : fullName,
      };
}

class Role {
  Role({
    this.id,
    this.name,
    this.description,
    this.type,
  });

  final int id;
  final String name;
  final String description;
  final String type;

  factory Role.fromMap(Map<String, dynamic> json) => Role(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "type": type == null ? null : type,
      };
}
