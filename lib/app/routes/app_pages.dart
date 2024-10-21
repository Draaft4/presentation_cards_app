import 'package:presentation_cards/app/bindings/home_binding.dart';
import 'package:presentation_cards/app/bindings/login_binding.dart';
import 'package:presentation_cards/app/ui/pages/home_page/home_page.dart';
import 'package:presentation_cards/app/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:presentation_cards/app/ui/pages/login_page/login_page.dart';

class AppPages {
  static final List<GetPage> pages = [

    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: AppRoutes.login,
      page: () =>  LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}