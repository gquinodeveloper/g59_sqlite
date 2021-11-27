import 'package:g56_find_home/app/data/models/house_model.dart';
import 'package:g56_find_home/app/data/models/request_token.dart';
import 'package:g56_find_home/app/data/models/user_model.dart';
import 'package:g56_find_home/app/data/repositories/house_repository.dart';
import 'package:g56_find_home/app/data/repositories/local/storage_repository.dart';
import 'package:g56_find_home/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //Instancias
  final _storageRepository = Get.find<StorageRepository>();
  final _userRepository = Get.find<UserRepository>();
  final _houseRepository = Get.find<HouseRepository>();

  RequestToken _requestToken = RequestToken();
  UserModel userModel = UserModel();
  RxList<HouseModel> houses = RxList<HouseModel>([]);

  //Variables
  RxString address = RxString("");
  RxString name = RxString("");
  RxInt isSelectedIndex = RxInt(0);

  @override
  void onInit() {
    _loadStorage();
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

  selectedIndex(int index) {
    isSelectedIndex.value = index;
  }

  _loadStorage() async {
    try {
      _requestToken = await _storageRepository.getSesion();
      userModel = await _userRepository.getInformation(
        token: _requestToken.requestToken ?? "",
        idUser: _requestToken.idUser ?? 0,
      );
      address.value = userModel.address ?? "No tengo dirección";
      name.value = userModel.name ?? "";

      _loadHouses();
    } catch (e) {
      print(e);
    }
  }

  _loadHouses() async {
    try {
      houses.value = await _houseRepository.getHouses(
        token: "${_requestToken.requestToken}",
      );
    } catch (e) {}
  }
}
