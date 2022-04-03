import 'package:dio/dio.dart';
import 'package:gext_strucure/app/core/config/config.dart';
import 'package:gext_strucure/app/data/models/user_model.dart';

class UserProvider {
  final _dio = Dio();

  Future<UserModel> getUserInfo({
    required String token,
    required int idUser,
  }) async {
    final _response = await _dio.get(
      kBaseUrl + "/api/user/information/$idUser",
      options: Options(
        headers: {
          "auth": token,
        },
      ),
    );
    return UserModel.fromJson(_response.data["information"][0]);
  }
}
