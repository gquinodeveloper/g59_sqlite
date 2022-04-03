import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gext_strucure/app/ui/screens/login/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _.doAuth();
          },
        ),
      ),
    );
  }
}
