import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:g56_find_home/app/core/config/config.dart';
import 'package:g56_find_home/app/data/models/user_model.dart';

class UserProvider {
  Future<String> insertUser({
    required UserModel userModel,
  }) async {
    final _dio = Dio();
    final _response = await _dio.post(
      kBaseUrl + "/api/user/register",
      data: json.encode(userModel.toJson()),
    );
    return _response.data["message"];
  }

  Future<UserModel> getInformation({
    required String token,
    required int idUser,
  }) async {
    final _dio = Dio();

    final response = await _dio.get(
      kBaseUrl + "/api/user/information/$idUser",
      options: Options(
        headers: {
          "auth": token,
        },
      ),
    );
    return (response.data["information"] as List)
        .map((json) => UserModel.fromJson(json))
        .toList()[0];
  }
}
