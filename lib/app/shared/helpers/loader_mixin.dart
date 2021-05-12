import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horadedoar/app/theme/app_theme.dart';

mixin LoaderMixin on GetxController {
  void loaderListener(RxBool loading) {
    ever(loading, (_) async {
      if (loading.isTrue) {
        Get.dialog(
          Center(
            child: CircularProgressIndicator(
              valueColor:
                  new AlwaysStoppedAnimation<Color>(appThemeData.primaryColor),
            ),
          ),
          barrierDismissible: false,
        );
      } else {
        Get.back();
      }
    });
  }
}
