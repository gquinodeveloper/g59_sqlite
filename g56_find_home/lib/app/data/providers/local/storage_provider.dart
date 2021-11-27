import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:g56_find_home/app/core/config/config.dart';
import 'package:g56_find_home/app/data/models/request_token.dart';
import 'package:get/get.dart';

class StorageProvider {
  final _storage = Get.put(FlutterSecureStorage());

  Future<void> setSesion({
    required RequestToken requestToken,
  }) async {
    await _storage.write(
        key: kKeyAuth, value: jsonEncode(requestToken.toJson()));
  }

  Future<RequestToken> getSesion() async {
    String value = await _storage.read(key: kKeyAuth) ?? "";
    return RequestToken.fromJson(jsonDecode(value));
  }
}
