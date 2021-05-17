import 'package:get/get.dart';
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

  Future signUp(String fullName, String email, String password) async {
    try {
      loading(true);
      final result = await _userRepository.register(fullName, email, password);
      print(result);

      loading(false);

      Get.offAllNamed(Routes.LOGIN);

      message(MessageModel(
          'Aviso', 'Cadastro efetuado com sucesso. Por favor, faça o login.'));
    } catch (e) {
      loading(false);
      message(MessageModel('Aviso', e.message));
    } finally {
      loading(false);
    }
  }
}
