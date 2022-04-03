import 'package:get/get.dart';
import 'package:gext_strucure/app/core/config/config.dart';
import 'package:gext_strucure/app/data/models/auth_model.dart';
import 'package:gext_strucure/app/data/models/house_model.dart';
import 'package:gext_strucure/app/data/models/user_model.dart';
import 'package:gext_strucure/app/data/repositories/house_repository.dart';
import 'package:gext_strucure/app/data/repositories/local/storage_repository.dart';
import 'package:gext_strucure/app/data/repositories/user_repository.dart';

class HomeController extends GetxController {
  //Instance
  final _storageRepository = Get.find<StorageRepository>();
  final _userRepository = Get.find<UserRepository>();
  final _houseRepository = Get.find<HouseRepository>();

  AuthModel _authModel = AuthModel();
  UserModel _userModel = UserModel();

  //varibales
  RxString fullName = RxString("");
  RxString address = RxString("");
  RxList<HouseModel> houses = RxList<HouseModel>();

  @override
  void onInit() {
    _loadSession();

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  _loadSession() async {
    try {
      _authModel = await _storageRepository.getSession(key: kKey);
      _loadUser();
      _loadHouses();
    } catch (e) {}
  }

  _loadUser() async {
    try {
      _userModel = await _userRepository.getUserInfo(
        token: "${_authModel.requestToken}",
        idUser: _authModel.idUser,
      );

      fullName.value = "${_userModel.name} ${_userModel.lastname} ";
      address.value = "${_userModel.address}";
    } catch (e) {
      print(e);
    }
  }

  _loadHouses() async {
    try {
      houses.value = await _houseRepository.getHouses(
        token: "${_authModel.requestToken}",
      );
    } catch (e) {
      print("Error: " + e.toString());
    }
  }
}
