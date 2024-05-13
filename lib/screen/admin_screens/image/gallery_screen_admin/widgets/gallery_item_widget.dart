import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/data/model/imae_model.dart';
import 'package:HotelAppUser/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class GalleryItemAdminWidget extends StatelessWidget {
  late ImageModel? image;
  late HotelModel? hotel;
  GalleryItemAdminWidget({this.image,this.hotel});

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      url: "${AppLink.linkImageHotelRoot}/${image!.imageName}",
      fit: BoxFit.fill,
      height: getVerticalSize(
        140,
      ),
      width: getHorizontalSize(
        182,
      ),
      radius: BorderRadius.circular(
        getHorizontalSize(
          12,
        ),
      ),
      onTap: () {
         Get.toNamed(AppRoutes.viewimagewidet,
            arguments: {"imagemodel": image , "hotelModel": hotel});
      },
    );
  }
}

