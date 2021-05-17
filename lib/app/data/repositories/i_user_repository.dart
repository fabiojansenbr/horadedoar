import 'package:horadedoar/app/data/models/user_model.dart';

abstract class IUserRepository {
  Future register(String fullName, String email, String password);
  Future<UserModel> loginWithEmail(String email, String password);
}
