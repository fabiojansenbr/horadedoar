enum UserType { DONOR, RECEIVER }

class UserModel {
  UserModel({
    this.id,
    this.name,
    this.email,
    this.password,
    this.type = UserType.DONOR,
    this.createdAt,
  });

  String id;
  String name;
  String email;
  String password;
  UserType type;
  DateTime createdAt;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, password: $password, type: $type, createdAt: $createdAt)';
  }
}
