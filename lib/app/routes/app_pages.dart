import 'package:food_delivery/app/modules/auth/views/login_view.dart';
import 'package:get/get.dart';

import 'package:food_delivery/app/modules/auth/bindings/auth_binding.dart';
import 'package:food_delivery/app/modules/auth/views/auth_view.dart';
import 'package:food_delivery/app/modules/home/bindings/home_binding.dart';
import 'package:food_delivery/app/modules/home/views/home_view.dart';
import 'package:food_delivery/app/modules/product/bindings/product_binding.dart';
import 'package:food_delivery/app/modules/product/views/product_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT,
      page: () => ProductView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: AuthBinding(),
    ),
  ];
}
