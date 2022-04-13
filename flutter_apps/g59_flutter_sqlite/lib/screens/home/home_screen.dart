import 'package:flutter/material.dart';
import 'package:g59_flutter_sqlite/providers/user_provider.dart';
import 'package:g59_flutter_sqlite/screens/home/widgets/btn_insert.dart';
import 'package:g59_flutter_sqlite/screens/home/widgets/users.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Dibujando widgets");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
      ),
      body: ListView(
        children: const [
          Text(
            "Listando usuarios",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          _Body()
        ],
      ),
      floatingActionButton: const BtnInsert(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _userProviver = Provider.of<UserProvider>(context, listen: false);
    _userProviver.getAllUser();
    return const Users();
  }
}
