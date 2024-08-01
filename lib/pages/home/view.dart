part of 'index.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: _buildShopList(),
      ),
    );
  }

  Widget _buildShopList() {
    return Obx(
      () => ListView.separated(
        itemCount: controller.shooList.length,
        separatorBuilder: (context, index) => SizedBox(height: 10.h),
        itemBuilder: (context, index) =>
            ShopItem(info: controller.shooList[index]),
      ),
    );
  }
}
