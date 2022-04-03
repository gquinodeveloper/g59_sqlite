import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:gext_strucure/app/data/models/auth_model.dart';

class StorageProvider {
  final _storage = Get.put(const FlutterSecureStorage());

  Future<void> setSession({
    required String key,
    required AuthModel authModel,
  }) async {
    await _storage.write(key: key, value: jsonEncode(authModel.toJson()));

    print("Culmino");
  }

  Future<AuthModel> getSession({
    required String key,
  }) async {
    String value = await _storage.read(key: key) ?? "";
    return AuthModel.fromJson(jsonDecode(value));
  }
}
