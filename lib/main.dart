import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horadedoar/app/theme/app_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Hora de Doar - Alimentos",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: appThemeData,
    ),
  );
}
