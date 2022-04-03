import 'package:get/get.dart';
import 'package:gext_strucure/app/data/models/auth_model.dart';
import 'package:gext_strucure/app/data/providers/local/storage_provider.dart';

class StorageRepository {
  final _storageProvider = Get.find<StorageProvider>();

  Future<void> setSession({
    required String key,
    required AuthModel authModel,
  }) =>
      _storageProvider.setSession(key: key, authModel: authModel);

  Future<AuthModel> getSession({
    required String key,
  }) =>
      _storageProvider.getSession(key: key);
}
