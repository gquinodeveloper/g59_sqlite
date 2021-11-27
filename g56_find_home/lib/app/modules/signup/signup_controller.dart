import 'package:dio/dio.dart';
import 'package:g56_find_home/app/data/models/user_model.dart';
import 'package:g56_find_home/app/data/repositories/user_repository.dart';
import 'package:g56_find_home/app/global/load_spinner.dart';
import 'package:g56_find_home/app/global/snackbar.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  //Instancias
  final _userRepository = Get.find<UserRepository>();

  //Variables
  String _name = "";
  String _lastName = "";
  String _address = "";
  String _email = "";
  String _password = "";

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

  void onChangeName(String value) => _name = value;
  void onChangeLastName(String value) => _lastName = value;
  void onChangeAdress(String value) => _address = value;
  void onChangeEmail(String value) => _email = value;
  void onChangePassword(String value) => _password = value;

  save() async {
    try {
      LoadSpinner.show();
      UserModel oUser = UserModel(
        name: _name,
        lastname: _lastName,
        address: _address,
        email: _email,
        password: _password,
      );

      String _message = await _userRepository.insertUser(userModel: oUser);
      LoadSpinner.hide();
      Snackbar.show(
        title: "Message",
        message: _message,
      );
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
