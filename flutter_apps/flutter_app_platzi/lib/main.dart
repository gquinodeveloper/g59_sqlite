import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/screens/home/home_screen.dart';
import 'package:flutter_app_platzi/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      //home: const SplashScreen(),
      home: const HomeScreen(),
    );
  }
}
