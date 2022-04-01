import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/screens/home/home_screen.dart';
import 'package:flutter_app_platzi/theme/app_theme.dart';

class BtnSession extends StatelessWidget {
  const BtnSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen(),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 55.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppTheme.kPrimaryColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text(
          "Iniciar sesión",
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: AppTheme.kBackground, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
