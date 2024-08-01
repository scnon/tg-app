import 'package:get/get.dart';
import 'package:tg_shop_app/pages/order/index.dart';

import '/pages/shop/index.dart';
import '/pages/home/index.dart';

const duration = Duration(milliseconds: 200);

final getPages = [
  GetPage(
    name: "/",
    page: () => const HomePage(),
    binding: HomeBindings(),
    transition: Transition.fadeIn,
    transitionDuration: duration,
  ),
  GetPage(
    name: "/shop",
    page: () => const ShopPage(),
    binding: ShopBindings(),
    transition: Transition.rightToLeft,
    transitionDuration: duration,
  ),
  GetPage(
    name: "/order",
    page: () => const OrderPage(),
    binding: OrderBindings(),
    transition: Transition.rightToLeft,
    transitionDuration: duration,
  ),
];
