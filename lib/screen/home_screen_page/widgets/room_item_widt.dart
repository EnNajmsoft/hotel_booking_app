// ignore_for_file: unrelated_type_equality_checks

import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/core/functions/translatefatabase.dart';
import 'package:HotelAppUser/data/model/roomsmodel.dart';
import 'package:HotelAppUser/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/favorite_controller.dart';

// ignore: must_be_immutable
class RoomItemWidgt extends StatelessWidget {
  final RoomsModel rooms;

  RoomItemWidgt({required this.rooms});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 20,
      ),
      decoration: AppDecoration.outlineBlack9000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            url:"${AppLink.linkImageRoomRoot}/${rooms.roomMainImag}" ,
            fit: BoxFit.fill,
            height: getSize(
              100,
            ),
            width: getSize(
              100,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                16,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              right: 10,
              top: 7,
              bottom: 9,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  translateDatabase(
                      rooms.roomNamear,
                      rooms.roomName),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold20,
                ),
                Padding(
                  padding: getPadding(
                    top: 12,
                  ),
                  child: Text(
                             translateDatabase(rooms.hotelNameAr  ,   rooms.hotelNameEn),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRegular14Gray300.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 12,
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
                          "",
                          // ${rooms.hotelRiat!.substring(0, 3)}
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
                          bottom: 1,
                        ),
                        child: Text(
                          "(${rooms.hotelViews} reviews)",
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
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 48,
              top: 6,
              bottom: 6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold24Cyan60001,
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Text(
                    "${rooms.roomPrice}/ night",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRegular10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
                GetBuilder<FavoriteControllerImp>(
                  builder: (controller) => CustomImageView(
                    onTap: () {
                      if (controller.isFavorite[rooms.roomId] == "1") {
                        controller.setFavorite(rooms.roomId, "0");
                        controller.removeFavorite(rooms.roomId!);
                      } else {
                        controller.setFavorite(rooms.roomId, "1");
                        controller.addFavorite(rooms.roomId!);
                      }
                    },
                    svgPath: controller.isFavorite[rooms.roomId] == "1"
                        ? ImageConstant.imgBookmark24x24
                        : ImageConstant.imgBookmark,
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    margin: getMargin(
                      top: 17,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
