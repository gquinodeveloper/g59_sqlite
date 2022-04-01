import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/constant/constant.dart';
import 'package:flutter_app_platzi/global_widgets/content_title.dart';
import 'package:flutter_app_platzi/screens/home/widgets/banner_course.dart';
import 'package:flutter_app_platzi/screens/home/widgets/bottom_navigator_app.dart';
import 'package:flutter_app_platzi/screens/home/widgets/category.dart';
import 'package:flutter_app_platzi/screens/home/widgets/course.dart';
import 'package:flutter_app_platzi/screens/home/widgets/search.dart';
import 'package:flutter_app_platzi/screens/home/widgets/title_home.dart';
import 'package:flutter_app_platzi/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kBackground,
      appBar: AppBar(
        backgroundColor: AppTheme.kBackground,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Image.asset(
            "assets/icons/Trazado.png",
          ),
        ),
        actions: const [
          Icon(Icons.notifications_none_rounded),
          SizedBox(width: 30.0),
          CircleAvatar(
            radius: 15.0,
            backgroundImage: NetworkImage(
              "https://i.pinimg.com/474x/6c/92/b8/6c92b88643bc75a5b5fa3003fe7d2733.jpg",
            ),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: ListView(
        children: const [
          TitleHome(),
          Search(),
          ContentTitle(title: "Cursos", more: true),
          Category(),
          ContentTitle(title: "Aprende gratis"),
          Course(),
          BannerCourse(),
        ],
      ),
      bottomNavigationBar: const BottomNavigatorApp(),
    );
  }
}
