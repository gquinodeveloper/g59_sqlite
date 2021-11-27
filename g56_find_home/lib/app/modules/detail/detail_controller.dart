import 'package:dio/dio.dart';
import 'package:g56_find_home/app/data/models/house_model.dart';
import 'package:g56_find_home/app/data/models/request_token.dart';
import 'package:g56_find_home/app/data/models/reservation_model.dart';
import 'package:g56_find_home/app/data/repositories/local/storage_repository.dart';
import 'package:g56_find_home/app/data/repositories/reservation_repository.dart';
import 'package:g56_find_home/app/global/load_spinner.dart';
import 'package:g56_find_home/app/global/snackbar.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  //Instancias
  final _storageRepository = Get.find<StorageRepository>();
  final _reservationRepository = Get.find<ReservationRepository>();

  RequestToken _requestToken = RequestToken();
  HouseModel houseModel = HouseModel();

  //variables
  String _date = "";

  @override
  void onInit() {
    _loadStorage();
    houseModel = Get.arguments as HouseModel;
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

  void onChangeDate(String value) => _date = value;

  _loadStorage() async {
    try {
      _requestToken = await _storageRepository.getSesion();
    } catch (e) {
      print(e);
    }
  }

  save() async {
    try {
      LoadSpinner.show();
      String _response = await _reservationRepository.insertReservation(
        token: "${_requestToken.requestToken}",
        reservationModel: ReservationModel(
          idUser: _requestToken.idUser,
          idHouse: houseModel.idHouse,
          price: houseModel.price,
          date: _date,
        ),
      );
      LoadSpinner.hide();
      Get.back();
      Snackbar.show(
        title: "Message",
        message: _response,
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
