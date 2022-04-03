import 'package:dio/dio.dart';
import 'package:gext_strucure/app/core/config/config.dart';
import 'package:gext_strucure/app/data/models/house_model.dart';

class HouseProvider {
  final _dio = Dio();

  Future<List<HouseModel>> getHouses({
    required String token,
  }) async {
    final _response = await _dio.get(
      kBaseUrl + "/api/house/houses/1/6",
      options: Options(
        headers: {
          "auth": token,
        },
      ),
    );

    return (_response.data["result"] as List)
        .map((json) => HouseModel.fromJson(json))
        .toList();
  }
}
