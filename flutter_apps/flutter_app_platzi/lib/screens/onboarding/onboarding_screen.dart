import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/screens/onboarding/widgets/btn_create_account.dart';
import 'package:flutter_app_platzi/screens/onboarding/widgets/btn_session.dart';
import 'package:flutter_app_platzi/screens/onboarding/widgets/header.dart';
import 'package:flutter_app_platzi/theme/app_theme.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kBackground,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 70.0,
          bottom: 30.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            const SizedBox(height: 10.0),
            Text(
              "Logra todas tus\nmetas ahora",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            Text(
              "Cursos online para especializarte en las\nprofesiones que lideran el mercado hoy.",
              style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            const BtnSession(),
            const BtnCreateAccount(),
            Center(
              child: Text(
                "Iniciar más tarde",
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
