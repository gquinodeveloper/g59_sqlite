import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gext_strucure/app/core/utils/dependency_injecction.dart';
import 'package:gext_strucure/app/routes/app_pages.dart';
import 'package:gext_strucure/app/routes/app_routes.dart';
import 'package:gext_strucure/app/ui/screens/login/login_screen.dart';

void main() {
  DependencyInjection.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const LoginScreen(),
      initialRoute: AppRoutes.LOGIN,
      getPages: AppPages.pages,
    );
  }
}
