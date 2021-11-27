import 'package:flutter/material.dart';
import 'package:g56_find_home/app/core/utils/dependency_injection.dart';
import 'package:g56_find_home/app/modules/splash/splash_page.dart';
import 'package:g56_find_home/app/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  DependencyInjection.load();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.pages,
      //home: SplashPage(),
    );
  }
}
