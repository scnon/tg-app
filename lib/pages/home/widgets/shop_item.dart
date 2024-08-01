part of '../index.dart';

class ShopItem extends StatelessWidget {
  final ShopModel info;
  const ShopItem({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('/shop', arguments: info.id),
      child: Container(
        height: 100.h,
        margin: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.network(info.image!,
                  width: 100.w, height: 100.h, fit: BoxFit.cover),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(info.name!,
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold)),
                  Text(info.address!,
                      style: TextStyle(fontSize: 14.sp, color: AppColors.text)),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
