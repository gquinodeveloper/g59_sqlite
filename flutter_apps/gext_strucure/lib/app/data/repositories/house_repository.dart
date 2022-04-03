import 'package:get/get.dart';
import 'package:gext_strucure/app/data/models/house_model.dart';
import 'package:gext_strucure/app/data/providers/house_provider.dart';

class HouseRepository {
  final _apiProvider = Get.find<HouseProvider>();

  Future<List<HouseModel>> getHouses({
    required String token,
  }) =>
      _apiProvider.getHouses(token: token);
}
