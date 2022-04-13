import 'package:dio/dio.dart';
import 'package:g59_flutter_sqlite/models/user_api_model.dart';

class ApiProvider {
  Future<List<UserApiModel>> getUsers(int page) async {
    var dio = Dio();
    final response = await dio.get(
      'https://reqres.in/api/users',
      /* options: Options(
        sendTimeout: 220000,
        headers: {
          "token": "sasaewfwefewfwefwef",
        },
      ), */
      queryParameters: {
        "page": page,
      },
    );

    return (response.data["data"] as List)
        .map((json) => UserApiModel.fromJson(json))
        .toList();
  }
}
