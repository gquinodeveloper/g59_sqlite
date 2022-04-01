import 'package:flutter/material.dart';
import 'package:flutter_app_platzi/theme/app_theme.dart';

class BottomNavigatorApp extends StatelessWidget {
  const BottomNavigatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: const TextStyle(
        fontSize: 11.0,
        color: Colors.white,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 10.0,
        color: Colors.white10,
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.white38,
      ),
      elevation: 0.0,
      //showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max_rounded),
          label: 'Home',
          backgroundColor: AppTheme.kBackground,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Business',
          backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.cloud_download_outlined),
          label: 'School',
          backgroundColor: Colors.purple,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_outlined),
          label: 'User',
          backgroundColor: Colors.pink,
        ),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.white,
      onTap: null,
    );
  }
}
