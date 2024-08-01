part of 'index.dart';

class HomeController extends GetxController {
  final currentVer = "".obs;
  final remoteVer = "".obs;

  @override
  void onInit() async {
    super.onInit();

    loadData();
  }

  void loadData() async {
    final data = await getStoreList();
    print(data);
  }

  void checkUpdate() async {}

  void downloadUpdate() {}
}
