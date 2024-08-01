part of 'index.dart';

class HomeController extends GetxController {
  final shooList = <ShopModel>[].obs;

  @override
  void onInit() async {
    super.onInit();

    loadData();
  }

  void loadData() async {
    shooList.clear();
    final data = await getStoreList();
    shooList.addAll(data);
  }

  void checkUpdate() async {}

  void downloadUpdate() {}
}
