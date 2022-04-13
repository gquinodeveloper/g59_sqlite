import 'package:flutter/material.dart';
import 'package:g59_flutter_sqlite/models/user_model.dart';
import 'package:g59_flutter_sqlite/providers/user_provider.dart';
import 'package:provider/provider.dart';

class BtnInsert extends StatelessWidget {
  const BtnInsert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        final _userProvider = Provider.of<UserProvider>(context, listen: false);
        _userProvider.insert(
          user: UserModel(
            name: "Jorge",
            lastName: "Jorge",
          ),
        );
      },
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
