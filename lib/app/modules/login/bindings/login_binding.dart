import 'package:get/get.dart';
import 'package:horadedoar/app/data/repositories/i_user_repository.dart';
import 'package:horadedoar/app/data/repositories_impl/user_repository.dart';

import 'package:horadedoar/app/modules/login/controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserRepository(Get.find()));
    Get.lazyPut<LoginController>(
      () => LoginController(Get.find()),
    );
  }
}
