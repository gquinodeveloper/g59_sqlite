import 'package:flutter/material.dart';

class BtnCreateAccount extends StatelessWidget {
  const BtnCreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Text(
        "Crear cuenta",
        style: Theme.of(context)
            .textTheme
            .subtitle2!
            .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
