import 'package:get/get.dart';
import 'package:horadedoar/app/data/models/user_model.dart';
import 'package:horadedoar/app/data/repositories/i_user_repository.dart';
import 'package:horadedoar/app/shared/helpers/loader_mixin.dart';
import 'package:horadedoar/app/shared/helpers/messages_mixin.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final loading = false.obs;
  Rx<MessageModel> message = Rx<MessageModel>(null);

  final IUserRepository _userRepository;

  LoginController(this._userRepository);

  @override
  void onInit() {
    loaderListener(loading);
    messageListener(message);

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<UserModel> loginWithEmail(String email, String password) async {
    try {
      loading(true);
      UserModel response =
          await _userRepository.loginWithEmail(email, password);

      print(response.toMap());

      loading(false);
    } catch (e) {
      loading(false);
      message(MessageModel('Aviso', e.message));
    } finally {
      loading(false);
    }

    return null;
  }
}
