import 'package:flutter/material.dart';
import 'package:g59_flutter_sqlite/models/user_api_model.dart';
import 'package:g59_flutter_sqlite/providers/api_provider.dart';

class UserScreen extends StatefulWidget {
  UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  ApiProvider _apiProvider = ApiProvider();
  List<UserApiModel> users = [];
  @override
  void initState() {
    _loadUser();
    super.initState();
  }

  _loadUser() async {
    users = await _apiProvider.getUsers(1);
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final wp = size.width;
    final hp = size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumiendo servicios"),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.red,
        height: hp * .10,
      ),
      /* body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              foregroundImage: NetworkImage("${users[index].avatar}"),
            ),
            title: Text(
              "${users[index].firstName} ${users[index].lastName}",
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
            subtitle: Text(
              "${users[index].email}",
              style: const TextStyle(color: Colors.black45),
            ),
          );
        },
      ), */
    );
  }
}
