import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:g56_find_home/app/core/config/config.dart';
import 'package:g56_find_home/app/data/models/reservation_model.dart';

class ReservationProvider {
  Future<String> insertReservation({
    required String token,
    required ReservationModel reservationModel,
  }) async {
    final _dio = Dio();
    final _response = await _dio.post(
      kBaseUrl + "/api/reservation/register",
      options: Options(
        headers: {"auth": token},
      ),
      data: json.encode(reservationModel.toJson()),
    );

    return _response.data["message"];
  }
}
