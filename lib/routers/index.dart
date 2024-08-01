import 'package:get/get.dart';

import '/pages/home/index.dart';

final getPages = [
  GetPage(
    name: "/",
    page: () => const HomePage(),
    binding: HomeBindings(),
    transition: Transition.fadeIn,
  ),
];
