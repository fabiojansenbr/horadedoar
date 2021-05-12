import 'package:get/get.dart';
import 'package:horadedoar/app/data/repositories/i_user_repository.dart';
import 'package:horadedoar/app/data/repositories_impl/user_repository_parse.dart';

import 'package:horadedoar/app/modules/register/controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserRepositoryParse());
    Get.lazyPut<RegisterController>(
      () => RegisterController(Get.find()),
    );
  }
}
