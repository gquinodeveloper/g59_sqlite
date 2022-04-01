import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/screens/onboarding/onboarding_screen.dart';
import 'package:flutter_app_platzi/theme/app_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      /* Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const OnboardingScreen(),
        ),
      ); */

      Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const OnboardingScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build");

    return const Scaffold(
      backgroundColor: AppTheme.kBackground,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
