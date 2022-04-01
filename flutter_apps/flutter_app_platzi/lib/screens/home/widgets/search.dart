import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/theme/app_theme.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.0,
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: AppTheme.kMiddlePrimaryColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search_rounded,
            color: Colors.white60,
          ),
          const SizedBox(width: 10.0),
          Text(
            "¿Qué te gustaria aprender hoy?",
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: Colors.white38, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
