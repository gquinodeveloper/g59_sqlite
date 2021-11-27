import 'package:g56_find_home/app/data/models/request_token.dart';
import 'package:g56_find_home/app/data/providers/local/storage_provider.dart';
import 'package:get/get.dart';

class StorageRepository {
  final _storageProvider = Get.find<StorageProvider>();

  Future<void> setSesion({
    required RequestToken requestToken,
  }) =>
      _storageProvider.setSesion(requestToken: requestToken);

  Future<RequestToken> getSesion() => _storageProvider.getSesion();
}
