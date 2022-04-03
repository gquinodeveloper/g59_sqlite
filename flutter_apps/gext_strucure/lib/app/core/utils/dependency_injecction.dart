import 'package:get/get.dart';
import 'package:gext_strucure/app/data/providers/auth_provider.dart';
import 'package:gext_strucure/app/data/providers/house_provider.dart';
import 'package:gext_strucure/app/data/providers/local/storage_provider.dart';
import 'package:gext_strucure/app/data/providers/user_provider.dart';
import 'package:gext_strucure/app/data/repositories/auth_repository.dart';
import 'package:gext_strucure/app/data/repositories/house_repository.dart';
import 'package:gext_strucure/app/data/repositories/local/storage_repository.dart';
import 'package:gext_strucure/app/data/repositories/user_repository.dart';

class DependencyInjection {
  static void load() {
    //Providers
    Get.put<AuthProvider>(AuthProvider());
    Get.put<UserProvider>(UserProvider());
    Get.put<HouseProvider>(HouseProvider());

    //Local
    Get.put<StorageProvider>(StorageProvider());

    //Repositories
    Get.put<AuthRepository>(AuthRepository());
    Get.put<UserRepository>(UserRepository());
    Get.put<HouseRepository>(HouseRepository());

    //Local
    Get.put<StorageRepository>(StorageRepository());
  }
}
