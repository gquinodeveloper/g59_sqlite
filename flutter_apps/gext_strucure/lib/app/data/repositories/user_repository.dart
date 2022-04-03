import 'package:get/get.dart';
import 'package:gext_strucure/app/data/models/user_model.dart';
import 'package:gext_strucure/app/data/providers/user_provider.dart';

class UserRepository {
  final _apiProvider = Get.find<UserProvider>();

  Future<UserModel> getUserInfo({
    required String token,
    required int idUser,
  }) =>
      _apiProvider.getUserInfo(token: token, idUser: idUser);
}
