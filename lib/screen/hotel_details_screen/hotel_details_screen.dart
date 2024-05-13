import 'package:HotelAppUser/controller/Hotel_detial_controller.dart';
import 'package:HotelAppUser/core/functions/translatefatabase.dart';
import 'package:HotelAppUser/linkapi.dart';
import 'package:HotelAppUser/screen/home_screen_page/widgets/room_item_widt.dart';
import 'package:HotelAppUser/screen/hotel_details_screen/widgets/hotel_rate_item_widget.dart';
import 'package:get/get.dart';
import '../../controller/favorite_controller.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HotelDetailsScreen extends StatelessWidget {
  HotelDitaleControllerImp controller = Get.put(HotelDitaleControllerImp());
  FavoriteControllerImp controllerFav = Get.put(FavoriteControllerImp());

  HotelDetailsScreen();
  // List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: GetBuilder<HotelDitaleControllerImp>(
          builder: (controller) => Container(
            width: double.maxFinite,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  height: getVerticalSize(256),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        url:
                            '${AppLink.linkImageHotelRoot}/${controller.hotel!.hotelImagMain}',
                        fit: BoxFit.cover,
                        height: getVerticalSize(256),
                        width: getHorizontalSize(428),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            decoration:
                                AppDecoration.gradientGray80000Gray90096,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomAppBar(
                                    height: getVerticalSize(50),
                                    leadingWidth: 52,
                                    leading: AppbarImage(
                                        height: getSize(28),
                                        width: getSize(28),
                                        svgPath:
                                            ImageConstant.imgArrowdownWhiteA700,
                                        margin: getMargin(
                                            left: 24, top: 11, bottom: 11),
                                        onTap: () {
                                          // onTapArrowleft8(context);
                                          Get.offAndToNamed(AppRoutes
                                              .homeScreenContainerScreen);
                                        }),
                                  ),
                                  Container(
                                      height: getVerticalSize(6),
                                      margin: getMargin(top: 188, bottom: 12),
                                      child: SmoothIndicator(
                                          offset: 0,
                                          count: 5,
                                          size: Size.zero,
                                          effect: ScrollingDotsEffect(
                                              spacing: 11,
                                              activeDotColor:
                                                  ColorConstant.cyan600,
                                              dotColor:
                                                  ColorConstant.blueGray400,
                                              dotHeight: getVerticalSize(6),
                                              dotWidth: getHorizontalSize(6))))
                                ])))
                  ])),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(left: 24, top: 25, bottom: 78),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              translateDatabase(
                                  controller.hotel!.hotelNameAr,
                                  controller.hotel!.hotelNameEn),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold32),
                          Padding(
                              padding: getPadding(top: 14, right: 87),
                              child: Row(children: [
                                CustomImageView(
                                  onTap: () {
                                    onTapImgLocaciton(controller.hotel!.addressNote);
                                  },
                                    svgPath: ImageConstant.imgLocation,
                                    height: getSize(20),
                                    width: getSize(20)),
                                Padding(
                                    padding:
                                        getPadding(left: 8, top: 1, bottom: 1),
                                    child: Text(
                                        "${controller.hotel!.addressCity}  ${controller.hotel!.addressStreet} ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRegular14
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))))
                              ])),
                          Padding(
                              padding: getPadding(top: 41, right: 24),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Gallery Photos",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRomanBold20),
                                    GestureDetector(
                                      child: Padding(
                                        padding: getPadding(bottom: 4),
                                        child: InkWell(
                                          onTap: () {
                                            Get.toNamed(
                                                AppRoutes.galleryadminscreen,
                                                arguments: {
                                                  "hotelModel": controller.hotel
                                                });
                                          },
                                          child: Text(
                                            "See All",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanBold16Cyan60001
                                                .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ])),
                          GetBuilder<HotelDitaleControllerImp>(
                            builder: (controller) => Container(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: getVerticalSize(130),
                                  child: ListView.separated(
                                      padding: getPadding(top: 30),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(24));
                                      },
                                      itemCount: controller.imagesmodel.length,
                                      itemBuilder: (context, index) {
                                        return CustomImageView(
                                            url:
                                                "${AppLink.linkImageHotelRoot}/${controller.imagesmodel[index].imageName}",
                                            height: getVerticalSize(100),
                                            width: getHorizontalSize(140),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16)),
                                            margin:
                                                getMargin(left: 6, right: 6));
                                      }),
                                ),
                              ),
                            ),
                          ),
                          GetBuilder<HotelDitaleControllerImp>(
                            builder: (controller) => Container(
                              child: Padding(
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
                                      controllerFav.isFavorite[
                                              controller.rooms[index].roomId] =
                                          controller.rooms[index].favorite;
                                      return Container(
                                          child: Column(
                                        children: [
                                          RoomItemWidgt(
                                              rooms: controller.rooms[index]),
                                          CustomButton(
                                              height: getVerticalSize(58),
                                              width: getHorizontalSize(263),
                                              text: "Book Now!",
                                              margin:
                                                  getMargin(left: 16, top: 5),
                                              variant: ButtonVariant
                                                  .OutlineGreenA7003f,
                                              onTap: () {
                                                controller.gotoselectdate(
                                                    controller.rooms[index]);
                                              }),
                                        ],
                                      ));
                                    }),
                              ),
                            ),
                          ),
                          Padding(
                              padding: getPadding(top: 29),
                              child: Text("Details",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20)),
                          Padding(
                              padding: getPadding(left: 27, top: 16, right: 41),
                              child: Row(children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgFrame32x32,
                                              height: getSize(32),
                                              width: getSize(32)),
                                          Padding(
                                            padding: getPadding(top: 7),
                                            child: Text(
                                              "Hotels",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium12
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2),
                                              ),
                                            ),
                                          ),
                                        ])),
                                Padding(
                                    padding: getPadding(left: 47, bottom: 1),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgTicket,
                                              height: getSize(32),
                                              width: getSize(32)),
                                          Padding(
                                            padding: getPadding(top: 7),
                                            child: Text(
                                              "4 Bedrooms",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium12
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2),
                                              ),
                                            ),
                                          ),
                                        ])),
                                Padding(
                                    padding: getPadding(left: 29, bottom: 1),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgLock32x32,
                                              height: getSize(32),
                                              width: getSize(32)),
                                          Padding(
                                            padding: getPadding(top: 7),
                                            child: Text(
                                              "2 Bathrooms",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium12
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2),
                                              ),
                                            ),
                                          ),
                                        ])),
                                Padding(
                                    padding: getPadding(left: 35),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgFacebook32x32,
                                              height: getSize(32),
                                              width: getSize(32),
                                              onTap: () {
                                                // onTapImgFacebook(
                                                //     context);
                                              }),
                                          Padding(
                                              padding: getPadding(top: 8),
                                              child: Text("4000 sqft",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRomanMedium12
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.2))))
                                        ]))
                              ])),
                          Padding(
                              padding: getPadding(top: 31),
                              child: Text("Description",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20)),
                          Container(
                              width: getHorizontalSize(370),
                              margin: getMargin(top: 14, right: 33),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: translateDatabase(
                                            controller.hotel!.hotelDescribAr,
                                            controller.hotel!.hotelDescribEn),
                                        style: TextStyle(
                                            color: ColorConstant.gray100,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Urbanist',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing:
                                                getHorizontalSize(0.2))),
                                    // TextSpan(
                                    //   text: "Read more...",
                                    //   style: TextStyle(
                                    //     color: ColorConstant.cyan60001,
                                    //     fontSize: getFontSize(14),
                                    //     fontFamily: 'Urbanist',
                                    //     fontWeight: FontWeight.w700,
                                    //     letterSpacing: getHorizontalSize(0.2),
                                    //   ),
                                    // ),
                                  ]),
                                  textAlign: TextAlign.left)),
                          Padding(
                              padding: getPadding(top: 27),
                              child: Text("Facilites",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20)),
                          Padding(
                              padding: getPadding(left: 2, top: 20, right: 47),
                              child: Row(children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgCutCyan600,
                                          height: getVerticalSize(24),
                                          width: getHorizontalSize(26)),
                                      Padding(
                                        padding: getPadding(top: 12),
                                        child: Text(
                                          "Swimming Pool",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistRomanMedium12
                                              .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2),
                                          ),
                                        ),
                                      )
                                    ]),
                                Padding(
                                  padding:
                                      getPadding(left: 41, top: 2, bottom: 1),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgSignalCyan600,
                                            height: getVerticalSize(18),
                                            width: getHorizontalSize(26)),
                                        Padding(
                                          padding: getPadding(top: 13),
                                          child: Text(
                                            "WiFi",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium12
                                                .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2),
                                            ),
                                          ),
                                        )
                                      ]),
                                ),
                                Spacer(),
                                Padding(
                                  padding: getPadding(bottom: 1),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCutCyan60023x25,
                                            height: getVerticalSize(23),
                                            width: getHorizontalSize(25)),
                                        Padding(
                                          padding: getPadding(top: 11),
                                          child: Text(
                                            "Restaurant",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium12
                                                .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2),
                                            ),
                                          ),
                                        ),
                                      ]),
                                ),
                                Padding(
                                  padding: getPadding(left: 45),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgTwitter,
                                            height: getVerticalSize(24),
                                            width: getHorizontalSize(32),
                                            onTap: () {
                                              // onTapImgTwitter(
                                              //     context);
                                            }),
                                        Padding(
                                          padding: getPadding(top: 12),
                                          child: Text(
                                            "Parking",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium12
                                                .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2),
                                            ),
                                          ),
                                        ),
                                      ]),
                                ),
                              ])),
                          Padding(
                              padding: getPadding(left: 4, top: 21, right: 26),
                              child: Row(children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgOffer,
                                          height: getVerticalSize(26),
                                          width: getHorizontalSize(21)),
                                      Padding(
                                          padding: getPadding(top: 11),
                                          child: Text("Meeting Room",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium12
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.2))))
                                    ]),
                                Padding(
                                  padding:
                                      getPadding(left: 34, top: 1, bottom: 1),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFrameCyan600,
                                            height: getSize(24),
                                            width: getSize(24)),
                                        Padding(
                                          padding: getPadding(top: 11),
                                          child: Text(
                                            "Elevator",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanMedium12
                                                .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2),
                                            ),
                                          ),
                                        ),
                                      ]),
                                ),
                                Padding(
                                    padding: getPadding(left: 34, bottom: 1),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgFrame1,
                                              height: getSize(26),
                                              width: getSize(26)),
                                          Padding(
                                            padding: getPadding(top: 9),
                                            child: Text(
                                              "Fitness Center",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium12
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2),
                                              ),
                                            ),
                                          ),
                                        ])),
                                Padding(
                                    padding: getPadding(left: 15),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgVector,
                                              height: getSize(26),
                                              width: getSize(26)),
                                          Padding(
                                            padding: getPadding(top: 11),
                                            child: Text(
                                              "24-hours Open",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanMedium12
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2),
                                              ),
                                            ),
                                          ),
                                        ]))
                              ])),

                          Padding(
                            padding: getPadding(top: 30, right: 24),
                            child: Row(children: [
                              Text("Review",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20),
                              CustomImageView(
                                  svgPath: ImageConstant.imgStar12x12,
                                  height: getSize(16),
                                  width: getSize(16),
                                  margin:
                                      getMargin(left: 12, top: 3, bottom: 4)),
                              Padding(
                                  padding:
                                      getPadding(left: 4, top: 2, bottom: 1),
                                  child: Text(
                                      " ",
                                      // ${controller.hotel!.hotelRiat!.substring(0, 3)}
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistSemiBold16
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2)))),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 4, bottom: 4),
                                  child: Text(
                                   
                                      "(${controller.hotel!.hotelViews} reviews)",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2)))),
                              Spacer(),
                           
                            ]),
                          ),
                          GetBuilder<HotelDitaleControllerImp>(
                            builder: (controller) => Container(
                              child: Padding(
                                padding: getPadding(top: 19, right: 24),
                                child: ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        height: getVerticalSize(20),
                                      );
                                    },
                                    itemCount: controller.rates.length,
                                    itemBuilder: (context, index) {
                                      return HotelRateItemWidget(
                                        rate: controller.rates[index],
                                      );
                                    }),
                              ),
                            ),
                          ),
                          // CustomDropDown(
                          //     focusNode: FocusNode(),
                          //     icon: Container(
                          //         margin: getMargin(left: 16, right: 153),
                          //         child: CustomImageView(
                          //             svgPath: ImageConstant
                          //                 .imgArrowdownCyan6000120x20)),
                          //     hintText: "More",
                          //     margin: getMargin(top: 20, right: 24),
                          //     variant: DropDownVariant.FillGray800,
                          //     shape: DropDownShape.RoundedBorder27,
                          //     padding: DropDownPadding.PaddingT16,
                          //     fontStyle: DropDownFontStyle
                          //         .UrbanistRomanBold16WhiteA700,
                          //     // items: dropdownItemList,
                          //     onChanged: (value) {}),
                          Padding(
                              padding: getPadding(top: 53, right: 30),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                              
                                  ]))
                        ]),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }


  onTapImgLocaciton(value) async {
    var url = value;
    if (!await launch(url)) {
      throw 'Could not launch $url';
    }
  }

}
