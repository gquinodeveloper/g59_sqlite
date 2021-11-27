import 'package:flutter/material.dart';
import 'package:g56_find_home/app/core/theme/app_theme.dart';
import 'package:g56_find_home/app/modules/signup/signup_controller.dart';
import 'package:g56_find_home/app/modules/signup/widgets/content.dart';
import 'package:g56_find_home/app/modules/signup/widgets/header.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (_) => Scaffold(
        backgroundColor: AppTheme.cyan,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Header(),
              Content(),
            ],
          ),
        ),
      ),
    );
  }
}
