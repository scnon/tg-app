part of 'index.dart';

class ShopBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<ShopController>(ShopController());
  }
}
