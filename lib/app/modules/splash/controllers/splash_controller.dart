import 'package:get/get.dart';
import 'package:horadedoar/app/routes/app_pages.dart';
import 'package:horadedoar/app/theme/custom_theme.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    initTheme();
    print('Theme initialized');
  }

  @override
  void onReady() {
    super.onReady();

    checkToken();
  }

  void initTheme() {
    CustomTheme.init(Get.context);
  }

  void checkToken() async {
    Get.offNamed(Routes.LOGIN);
  }

  @override
  void onClose() {}
}
