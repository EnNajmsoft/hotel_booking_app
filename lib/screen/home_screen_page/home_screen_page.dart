
import 'dart:developer';

import 'package:HotelAppUser/controller/Home_controller.dart';
import 'package:HotelAppUser/controller/favorite_controller.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/screen/home_screen_page/widgets/customappbar_search.dart';
import 'package:HotelAppUser/screen/home_screen_page/widgets/room_item_widt.dart';
import 'package:get/get.dart';
import '../../core/services/services.dart';
import '../home_screen_page/widgets/hotels_item_widget.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';

import 'package:flutter/material.dart';

class HomeScreenPage extends StatelessWidget {

    FavoriteControllerImp controllerFav = Get.put(FavoriteControllerImp());

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());


    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
            height: getVerticalSize(41),
            leadingWidth: 56,
            leading: AppbarImage(
                height: getSize(32),
                width: getSize(32),
                svgPath: ImageConstant.imgGoogle,
                margin: getMargin(left: 24),
                onTap: () {
       
                }),
            title: AppbarTitle(text: "Comfort", margin: getMargin(left: 16)),
       
            
            ),
////////////////////////////////body///////////////////////////////////
        body: GetBuilder<HomeControllerImp>(
          builder: (controller) => SizedBox(
            width: size.width,
            child: SingleChildScrollView(
              child: Padding(
                padding: getPadding(left: 24, top: 34, bottom: 5),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Hello, ${controller.username} 👋",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold32),

                      CustomAppBarSearch(
                        titleappbar: "search",
                        mycontroller: controller.search!,
                        onChanged: (val) {
                          controller.checkSearch(val);
                        },
                        onPressedSearch: () {
                          controller.onSearchItems();
                          print(controller.search);
                          print(controller.listhotel_search);
                        },
                      ),

                      //////////////////////hotels////////////////////////////
                      !controller.isSearch
                          ? Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: getVerticalSize(430),
                                    child: ListView.separated(
                                        padding: getPadding(top: 30),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(height: getVerticalSize(24));
                                        },
                                        itemCount: controller.hotels.length,
                                        itemBuilder: (context, index) {
                                          return HotelsItemWidget(index: index, active: false,);
                                        }),
                                  ),
                                ),
                                ///////////////////////////////////////////////////////////////////////////////////////
                                Padding(
                                  padding: getPadding(top: 31, right: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("عروض حصريه",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanBold18),
                                      ]),
                                ),
//////////////////////////////////////////////////////////////////////////
                                ///
                                ///
                                
                                Padding(
                                  padding: getPadding(top: 22, right: 24),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(24));
                                      },
                                      itemCount: controller.rooms.length,
                                      itemBuilder: (context, index) {

                                      
                                            controllerFav.isFavorite[controller
                                                .rooms[index].roomId] =
                                            controller.rooms[index].favorite;
                                
                                        return RoomItemWidgt(rooms: controller.rooms[index]);
                                      }),
                                ),
                              ],
                            )
                          : listhotelsearch(
                              hotelsearch: controller.listhotel_search),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
  
}

onTapAlarm() {
  Get.toNamed(
    AppRoutes.notificationsScreen,
  );
}


class listhotelsearch extends StatelessWidget {
  final List<HotelModel> hotelsearch;

  const listhotelsearch({Key? key, required this.hotelsearch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 22, right: 24),
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: getVerticalSize(24));
          },
          itemCount: hotelsearch.length,
          itemBuilder: (context, index) {
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
                  InkWell(


                    onTap: () {
                    
                      Get.toNamed(AppRoutes.hotelDetailsScreen, arguments: {
                        "hotels": hotelsearch[index],
                      });
                    },


                    child: CustomImageView(
                      imagePath: ImageConstant.imgRectangle4100x1001,
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
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 7,
                      bottom: 9,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "${hotelsearch[index].hotelNameAr}",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 12,
                          ),
                          child: Text(
                            "Paris, France",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtUrbanistRegular14Gray300.copyWith(
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
                                  "4.8",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtUrbanistSemiBold14.copyWith(
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
                                  "(4,378 reviews)",
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
                            "/ night",
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
                            top: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );

  }

}
