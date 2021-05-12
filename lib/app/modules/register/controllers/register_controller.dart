import 'package:get/get.dart';
import 'package:horadedoar/app/data/models/user_model.dart';
import 'package:horadedoar/app/data/repositories/i_user_repository.dart';
import 'package:horadedoar/app/routes/app_pages.dart';
import 'package:horadedoar/app/shared/helpers/loader_mixin.dart';
import 'package:horadedoar/app/shared/helpers/messages_mixin.dart';

class RegisterController extends GetxController
    with LoaderMixin, MessagesMixin {
  final IUserRepository _userRepository;
  final loading = false.obs;
  Rx<MessageModel> message = Rx<MessageModel>(null);

  RegisterController(this._userRepository);

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> signUp(String name, String email, String password) async {
    try {
      final user = UserModel(name: name, email: email, password: password);

      loading(true);
      final resultUser = await _userRepository.signup(user);
      print(resultUser);
      loading(false);

      Get.offAllNamed(Routes.LOGIN);

      message(MessageModel(
          'Aviso', 'Cadastro efetuado com sucesso. Por favor, faça o login.'));
    } catch (e) {
      loading(false);
      message(MessageModel('Aviso', e));
    } finally {
      loading(false);
    }
  }
}
