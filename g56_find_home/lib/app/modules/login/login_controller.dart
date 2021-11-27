import 'package:dio/dio.dart';
import 'package:g56_find_home/app/data/models/request_token.dart';
import 'package:g56_find_home/app/data/repositories/auth_repository.dart';
import 'package:g56_find_home/app/data/repositories/local/storage_repository.dart';
import 'package:g56_find_home/app/global/load_spinner.dart';
import 'package:g56_find_home/app/global/snackbar.dart';
import 'package:g56_find_home/app/modules/home/home_page.dart';
import 'package:g56_find_home/app/routes/app_routes.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //Instancias
  final _authRepository = Get.find<AuthRepository>();
  final _storageRepository = Get.find<StorageRepository>();

  //Variables
  String _email = "gqcrispin@gmail.com";
  String _password = "123456";
  RequestToken _oRequestToken = RequestToken();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void onChangeEmail(String value) => _email = value;
  void onChangePassword(String value) => _password = value;

  doLogin() async {
    try {
      LoadSpinner.show();
      _oRequestToken = await _authRepository.auth(
        email: _email,
        password: _password,
      );
      LoadSpinner.hide();
      if (_oRequestToken.success == true) {
        await _storageRepository.setSesion(requestToken: _oRequestToken);
        Get.offNamedUntil(AppRoutes.HOME, (_) => false);
      }
      //LoadSpinner.hide();
    } on DioError catch (e) {
      LoadSpinner.hide();
      Snackbar.show(
        title: "Message",
        message: e.response?.data["message"],
        type: 1,
      );
    }
  }
}
