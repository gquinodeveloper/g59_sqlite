import 'package:dio/dio.dart';
import 'package:g56_find_home/app/core/config/config.dart';
import 'package:g56_find_home/app/data/models/request_token.dart';

class AuthProvider {
  Future<RequestToken> auth({
    required String email,
    required String password,
  }) async {
    final _dio = Dio();
    final _response = await _dio.post(
      kBaseUrl + "/api/user/auth",
      data: {
        "email": email,
        "password": password,
      },
    );

    return RequestToken.fromJson(_response.data);
  }
}
