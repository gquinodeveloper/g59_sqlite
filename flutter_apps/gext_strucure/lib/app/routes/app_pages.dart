import 'package:get/get.dart';
import 'package:gext_strucure/app/routes/app_routes.dart';
import 'package:gext_strucure/app/ui/screens/home/home_binding.dart';
import 'package:gext_strucure/app/ui/screens/home/home_screen.dart';
import 'package:gext_strucure/app/ui/screens/login/login_binding.dart';
import 'package:gext_strucure/app/ui/screens/login/login_screen.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
