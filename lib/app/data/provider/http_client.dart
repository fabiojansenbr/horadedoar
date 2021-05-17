import 'package:get/get.dart';
import 'package:horadedoar/app/shared/env/constants.dart';

class HttpClient extends GetConnect {
  String baseUrl = Constants.BASE_URL;

  @override
  void onInit() {
    httpClient.baseUrl = baseUrl;

    super.onInit();
  }
}
