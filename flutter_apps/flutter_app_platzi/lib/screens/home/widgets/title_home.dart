import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/constant/constant.dart';

class TitleHome extends StatelessWidget {
  const TitleHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: kMarginApp,
        right: kMarginApp,
        top: 5.0,
        bottom: 20.0,
      ),
      child: Text(
        "¿Qué vas aprender hoy?",
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
  }
}
