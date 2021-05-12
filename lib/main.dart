import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:horadedoar/app/theme/app_theme.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await initializeParse();

  runApp(
    GetMaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        Locale('pt'),
      ],
      title: "Hora de Doar - Alimentos",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: appThemeData,
    ),
  );
}

Future<void> initializeParse() async {
  const appId = 'I6U3nCKpzVTli9VEQB1RbML6LExcPVhZIKhcbXNR';
  const clientKey = 'DltadL1l3h6SXFLZRWIRiKwkj1NvMwwt96e3KM9p';
  const serverURL = 'https://parseapi.back4app.com/';
  const serverLiveQueryURL = 'https://horadedoar.b4a.io';

  await Parse().initialize(appId, serverURL,
      clientKey: clientKey,
      autoSendSessionId: true,
      debug: true,
      liveQueryUrl: serverLiveQueryURL);
}
