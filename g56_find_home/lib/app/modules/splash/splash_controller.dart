import 'package:g56_find_home/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    _goLogin();
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  _goLogin() async {
    await Future.delayed(Duration(milliseconds: 800), () {
      Get.offNamed(AppRoutes.LOGIN);
    });
  }
}
