import 'package:HotelAppUser/controller/myfavoritecontroller.dart';
import 'package:HotelAppUser/data/model/my_foverite_model.dart';
import 'package:HotelAppUser/linkapi.dart';
import 'package:HotelAppUser/screen/bookmark_removal_bottomsheet/bookmark_removal_bottomsheet.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:HotelAppUser/core/app_export.dart';

// ignore: must_be_immutable
class MyBookmarksItemWidget extends GetView<MyFavoriteController> {
  final MyFavoriteModel itemsModel;

  MyBookmarksItemWidget({required this.itemsModel});

  // var controller = Get.find<MyBookmarksController>();

  VoidCallback? onTapImgBookmark;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 18,
        top: 20,
        right: 18,
        bottom: 20,
      ),
      decoration: AppDecoration.outlineBlack9000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
                 url:'${AppLink.linkImageRoomRoot}/${itemsModel.roomMainImag}',
            fit: BoxFit.cover,
            // fit: BoxFit.fill,
            // imagePath: ImageConstant.imgRectangle5120x1401,
            height: getVerticalSize(
              120,
            ),
            width: getHorizontalSize(
              140,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                16,
              ),
            ),
            margin: getMargin(
              left: 1,
            ),
          ),
          Container(
            width: getHorizontalSize(
              115,
            ),
            margin: getMargin(
              left: 2,
              top: 15,
            ),
            child: Text(
              '${itemsModel.roomName}',
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold18,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 2,
              top: 9,
            ),
            child: Row(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgStar12x12,
                  height: getSize(
                    12,
                  ),
                  width: getSize(
                    12,
                  ),
                  margin: getMargin(
                    top: 2,
                    bottom: 2,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 4,
                  ),
                  child: Text(
                    '${itemsModel.roomNamear}',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistSemiBold14.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 1,
                  ),
                  child: Text(
                    '${itemsModel.hotelNameAr}',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRegular12.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 2,
              top: 9,
            ),
            child: Row(
              children: [
                Text(
                  'nn',
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold20Cyan60001,
                ),
                Padding(
                  padding: getPadding(
                    left: 4,
                    top: 10,
                    bottom: 2,
                  ),
                  child: Text(
                    "lbl_night".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRegular10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
              
                  svgPath: ImageConstant.imgBookmark24x24,
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                  margin: getMargin(
                    left: 48,
                  ),
                  onTap: () {
                      Get.bottomSheet(BookmarkRemovalBottomsheet(itemsModel: itemsModel),
                        isScrollControlled: true);

                    //  controller.deleteFromFavorite(itemsModel.favoriteId!); 
                      },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

