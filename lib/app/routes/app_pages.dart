import 'package:presentation_cards/app/modules/home_binding.dart';
import 'package:presentation_cards/app/modules/home_page.dart';
import 'package:presentation_cards/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}