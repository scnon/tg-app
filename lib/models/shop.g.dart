////////////////////////////////////////////////////////////
////           ____             __
////          / __ \____ ______/ /_
////         / / / / __ `/ ___/ __/
////        / /_/ / /_/ / /  / /_
////       /_____/\__,_/_/   \__/
////
////   GENERATED CODE - DO NOT MODIFY BY HAND
////
////////////////////////////////////////////////////////////
library;

class ShopModel {
  final String? address;
  final String? addressMap;
  final double? balance;
  final int? deliveryPrice;
  final dynamic deskOrderId;
  final int? dis;
  final int? distance;
  final int? endTime;
  final int? id;
  final String? image;
  final dynamic images;
  final dynamic isEmpty;
  final String? lat;
  final String? lng;
  final int? minPrice;
  final String? mobile;
  final String? name;
  final String? notice;
  final int? startTime;
  final int? status;

  ShopModel({
    this.address,
    this.addressMap,
    this.balance,
    this.deliveryPrice,
    this.deskOrderId,
    this.dis,
    this.distance,
    this.endTime,
    this.id,
    this.image,
    this.images,
    this.isEmpty,
    this.lat,
    this.lng,
    this.minPrice,
    this.mobile,
    this.name,
    this.notice,
    this.startTime,
    this.status,
  });

  factory ShopModel.fromJson(Map<String, dynamic> json) {
    return ShopModel(
      address: json['address'] as String?,
      addressMap: json['addressMap'] as String?,
      balance: json['balance'] as double?,
      deliveryPrice: json['deliveryPrice'] as int?,
      deskOrderId: json['deskOrderId'],
      dis: json['dis'] as int?,
      distance: json['distance'] as int?,
      endTime: json['endTime'] as int?,
      id: json['id'] as int?,
      image: json['image'] as String?,
      images: json['images'],
      isEmpty: json['isEmpty'],
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      minPrice: json['minPrice'] as int?,
      mobile: json['mobile'] as String?,
      name: json['name'] as String?,
      notice: json['notice'] as String?,
      startTime: json['startTime'] as int?,
      status: json['status'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'addressMap': addressMap,
      'balance': balance,
      'deliveryPrice': deliveryPrice,
      'deskOrderId': deskOrderId,
      'dis': dis,
      'distance': distance,
      'endTime': endTime,
      'id': id,
      'image': image,
      'images': images,
      'isEmpty': isEmpty,
      'lat': lat,
      'lng': lng,
      'minPrice': minPrice,
      'mobile': mobile,
      'name': name,
      'notice': notice,
      'startTime': startTime,
      'status': status,
    };
  }
}
