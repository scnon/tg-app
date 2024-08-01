import 'package:tg_shop_app/models/shop.g.dart';
import 'package:tg_shop_app/utils/request.dart';

Future<List<ShopModel>> getStoreList() async {
  final data = await Request.get("/store/list",
      queryParameters: {'lng': 0, 'lat': 0, 'kw': '', 'shop_id': 0});

  var list = <ShopModel>[];
  for (var element in (data as List? ?? [])) {
    list.add(ShopModel.fromJson(element));
  }
  return list;
}

getStoreDetail(int id) async {
  return Request.get("/store/getShop", queryParameters: {'shop_id': id});
}

getStoreMenu(int id) async {
  return Request.get("/product/products", queryParameters: {'shopId': id});
}
