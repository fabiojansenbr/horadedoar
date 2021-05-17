import 'package:horadedoar/app/data/models/user_model.dart';
import 'package:horadedoar/app/data/provider/http_client.dart';
import 'package:horadedoar/app/data/repositories/i_user_repository.dart';
import 'package:horadedoar/app/shared/helpers/rest_exception.dart';

class UserRepository implements IUserRepository {
  final HttpClient httpClient;

  UserRepository(this.httpClient);

  @override
  Future register(String fullName, String email, String password) async {
    final response = await httpClient.post('/auth/local/register', {
      'full_name': fullName,
      'email': email,
      'password': password
    }, decoder: (resp) {
      return resp;
    });

    if (response.hasError) {
      throw RestException(
        message:
            response.body['message'][0]['messages'][0]['message'] ?? 'Erro',
        statusCode: response.statusCode ?? 0,
      );
    }

    return response.body;
  }

  @override
  Future<UserModel> loginWithEmail(String email, String password) async {
    final response = await httpClient
        .post('/auth/local/', {'identifier': email, 'password': password},
            decoder: (resp) {
      return UserModel.fromMap(resp);
    });

    if (response.hasError) {
      throw RestException(
        message: 'Erro ao efetuar o login. Verifique suas credenciais',
        statusCode: response.statusCode ?? 0,
      );
    }

    return response.body;
  }

  @override
  Future<UserModel> getMe(String token) async {
    final response = await httpClient.get('/users/me',
        headers: {'Authorization': 'Bearer $token'}, decoder: (resp) {
      return UserModel.fromMap(resp);
    });

    if (response.hasError) {
      throw RestException(
        message: 'Erro ao obter usuário',
        statusCode: response.statusCode ?? 0,
      );
    }

    return response.body;
  }
}
