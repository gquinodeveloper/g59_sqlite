import 'package:g56_find_home/app/data/models/user_model.dart';
import 'package:g56_find_home/app/data/providers/user_provider.dart';
import 'package:get/get.dart';

class UserRepository {
  final _apiProvider = Get.find<UserProvider>();

  Future<String> insertUser({
    required UserModel userModel,
  }) =>
      _apiProvider.insertUser(userModel: userModel);

  Future<UserModel> getInformation({
    required String token,
    required int idUser,
  }) =>
      _apiProvider.getInformation(token: token, idUser: idUser);
}
