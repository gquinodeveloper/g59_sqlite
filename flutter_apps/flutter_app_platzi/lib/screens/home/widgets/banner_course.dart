import 'package:flutter/material.dart';

class BannerCourse extends StatelessWidget {
  const BannerCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.0,
      margin: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 25.0,
      ),
      padding: const EdgeInsets.only(right: 30.0),
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20.0),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(62, 43, 62, 1.0),
            Color.fromRGBO(20, 31, 60, 1.0),
            Color.fromRGBO(62, 81, 71, 1.0),
          ],
        ),
      ),
      child: Text(
        "Accede a más de 700 cursos\nadquiriendo un plan expert +",
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
