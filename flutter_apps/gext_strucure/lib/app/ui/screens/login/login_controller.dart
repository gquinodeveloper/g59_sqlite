import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gext_strucure/app/core/config/config.dart';
import 'package:gext_strucure/app/data/models/auth_model.dart';
import 'package:gext_strucure/app/data/repositories/auth_repository.dart';
import 'package:gext_strucure/app/data/repositories/local/storage_repository.dart';
import 'package:gext_strucure/app/routes/app_routes.dart';

class LoginController extends GetxController {
  //Instance
  final _authRepository = Get.find<AuthRepository>();
  final _storageRepository = Get.find<StorageRepository>();

  //Class
  AuthModel _authModel = AuthModel();

  String email = "gqcrispin@gmail.com";
  String password = "123456";

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

  doAuth() async {
    try {
      _authModel = await _authRepository.auth(
        email: email,
        password: password,
      );
      if (_authModel.success == true) {
        await _storageRepository.setSession(key: kKey, authModel: _authModel);
        Get.offNamed(AppRoutes.HOME);
      }

      print(_authModel.requestToken);
    } on DioError catch (e) {
      Get.snackbar(
        "Error",
        e.error + " " + e.response?.data["message"],
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 5),
        backgroundColor: Colors.pink,
      );
    }
  }
}
