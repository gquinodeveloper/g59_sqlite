import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:g59_flutter_sqlite/providers/user_provider.dart';
import 'package:provider/provider.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Users");
    final _userProviver = Provider.of<UserProvider>(context);
    final users = _userProviver.users;

    return ListView.builder(
      shrinkWrap: true,
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Slidable(
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {},
                backgroundColor: Color(0xFF21B7CA),
                foregroundColor: Colors.white,
                icon: Icons.share,
                label: 'Share',
              ),
              SlidableAction(
                onPressed: (context) {
                  _userProviver.delete(users[index].id ?? 0);
                },
                backgroundColor: Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),
            ],
          ),
          child: ListTile(
            title: Text(
              "${users[index].name}",
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
            subtitle: Text(
              "${users[index].lastName}",
              style: const TextStyle(color: Colors.black45),
            ),
          ),
        );
        /*  return ListTile(
          title: Text(
            "${users[index].name}",
            style: const TextStyle(
              fontSize: 20.0,
            ),
          ),
          subtitle: Text(
            "${users[index].lastName}",
            style: const TextStyle(color: Colors.black45),
          ),
        ); */
      },
    );
  }
}
