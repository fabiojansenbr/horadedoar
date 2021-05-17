import 'package:get/get.dart';
import 'package:horadedoar/app/data/provider/http_client.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HttpClient(), fenix: true);
  }
}
