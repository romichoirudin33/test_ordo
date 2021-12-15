import 'package:get/get.dart';

import '../modules/ProductDetail/bindings/product_detail_binding.dart';
import '../modules/ProductDetail/views/product_detail_view.dart';
import '../modules/checkOut/bindings/check_out_binding.dart';
import '../modules/checkOut/views/check_out_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAIL,
      page: () => ProductDetailView(),
      binding: ProductDetailBinding(),
    ),
    GetPage(
      name: _Paths.CHECK_OUT,
      page: () => CheckOutView(),
      binding: CheckOutBinding(),
    ),
  ];
}
