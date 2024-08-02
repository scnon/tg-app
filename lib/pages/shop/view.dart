part of 'index.dart';

class ShopPage extends GetView<ShopController> {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(
          100,
          (index) => ListTile(
            title: Text('Item $index'),
            onTap: () => Get.toNamed('/order', arguments: index),
          ),
        ),
      ),
    );
  }
}
