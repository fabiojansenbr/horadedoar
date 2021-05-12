import 'package:horadedoar/app/data/models/user_model.dart';

abstract class IUserRepository {
  Future<UserModel> signup(UserModel user);
  Future<UserModel> loginWithEmail(String email, String password);
}
