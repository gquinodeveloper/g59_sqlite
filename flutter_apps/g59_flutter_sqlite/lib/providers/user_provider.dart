import 'package:flutter/material.dart';
import 'package:g59_flutter_sqlite/models/user_model.dart';
import 'package:g59_flutter_sqlite/providers/db_provider.dart';

class UserProvider extends ChangeNotifier {
  List<UserModel> users = [];
  insert({
    required UserModel user,
  }) async {
    final response = await DBProvider.db.insert(user: user);
    user.id = response;
    users.add(user);
    notifyListeners();
  }

  getAllUser() async {
    users = await DBProvider.db.getAllUser();
    notifyListeners();
  }

  delete(int id) async {
    final response = await DBProvider.db.delete(id);
    print("delete: $response");
    getAllUser();
  }
}
