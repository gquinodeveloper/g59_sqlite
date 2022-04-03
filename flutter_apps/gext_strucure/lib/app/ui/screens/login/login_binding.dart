import 'package:get/get.dart';
import 'package:gext_strucure/app/ui/screens/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
