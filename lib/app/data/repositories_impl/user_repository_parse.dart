import 'package:horadedoar/app/data/models/user_model.dart';
import 'package:horadedoar/app/data/repositories/i_user_repository.dart';
import 'package:horadedoar/app/shared/utils/parse_errors.dart';
import 'package:horadedoar/app/shared/utils/parse_keys.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class UserRepositoryParse implements IUserRepository {
  Future<UserModel> signup(UserModel user) async {
    final parseUser = ParseUser(user.email, user.password, user.email);

    parseUser.set<String>(keyUserName, user.name);
    parseUser.set(keyUserType, user.type.index);

    final response = await parseUser.signUp();

    if (response.success) {
      return mapParseToUser(response.result);
    } else {
      return Future.error(ParseErrors.getDescription(response.error.code));
    }
  }

  UserModel mapParseToUser(ParseUser parseUser) {
    return UserModel(
      id: parseUser.objectId,
      name: parseUser.get(keyUserName),
      email: parseUser.get(keyUserEmail),
      type: UserType.values[parseUser.get(keyUserType)],
      createdAt: parseUser.get(keyUserCreatedAt),
    );
  }

  @override
  Future<UserModel> loginWithEmail(String email, String password) async {
    final parseUser = ParseUser(email, password, null);

    final response = await parseUser.login();

    if (response.success) {
      return mapParseToUser(response.result);
    } else {
      return Future.error(ParseErrors.getDescription(response.error.code));
    }
  }
}
