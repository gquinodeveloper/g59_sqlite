import 'package:flutter/material.dart';
import 'package:g56_find_home/app/core/theme/app_theme.dart';
import 'package:g56_find_home/app/global/button_navigator.dart';
import 'package:g56_find_home/app/modules/home/home_controller.dart';
import 'package:g56_find_home/app/modules/home/widgets/category.dart';
import 'package:g56_find_home/app/modules/home/widgets/header.dart';
import 'package:g56_find_home/app/modules/home/widgets/houses.dart';
import 'package:g56_find_home/app/modules/home/widgets/search.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        backgroundColor: AppTheme.background,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Positioned.fill(
                child: CustomScrollView(
                  slivers: [
                    Header(),
                    Search(),
                    Category(),
                    Houses(),
                  ],
                ),
              ),
              ButtonNavigator()
            ],
          ),
        ),
      ),
    );
  }
}
