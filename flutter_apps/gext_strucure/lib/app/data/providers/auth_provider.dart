import 'package:dio/dio.dart';
import 'package:gext_strucure/app/core/config/config.dart';
import 'package:gext_strucure/app/data/models/auth_model.dart';
import 'package:gext_strucure/app/data/models/user_model.dart';

class AuthProvider {
  final _dio = Dio();
  Future<AuthModel> auth({
    required String email,
    required String password,
  }) async {
    final _response = await _dio.post(
      kBaseUrl + "/api/user/auth",
      data: {
        "email": email,
        "password": password,
      },
    );
    return AuthModel.fromJson(_response.data);
  }
}
