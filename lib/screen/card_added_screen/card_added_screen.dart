import 'package:get/get.dart';

import '../card_added_screen/widgets/card_added_item_widget.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CardAddedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(52),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 10, bottom: 14),
                    onTap: () {
                      onTapArrowleft16();
                    }),
                title:
                    AppbarTitle(text: "Payment", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgQrcode,
                      margin:
                          getMargin(left: 24, top: 10, right: 24, bottom: 14))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 29, right: 24, bottom: 29),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Payment Methods",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold18),
                            Padding(
                                padding: getPadding(bottom: 2),
                                child: Text("Add New Card",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtUrbanistRomanBold16Cyan60001
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2))))
                          ]),
                      Padding(
                          padding: getPadding(top: 26),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(28));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return CardAddedItemWidget();
                              })),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Text("Pay with Debit/Credit Card",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold18)),
                      Container(
                          margin: getMargin(top: 26, bottom: 5),
                          padding: getPadding(
                              left: 24, top: 26, right: 24, bottom: 26),
                          decoration: AppDecoration.outlineBlack90014.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage27x441,
                                height: getVerticalSize(27),
                                width: getHorizontalSize(44),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(4))),
                            Padding(
                                padding:
                                    getPadding(left: 12, top: 2, bottom: 2),
                                child: Text("•••• •••• •••• •••• 4679",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold18)),
                            Spacer(),
                            Container(
                                margin: getMargin(top: 3, right: 8, bottom: 3),
                                padding: getPadding(all: 4),
                                decoration: AppDecoration.outlineCyan600011
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: getSize(11),
                                          width: getSize(11),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.cyan60001,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(5))))
                                    ]))
                          ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(55),
                text: "Continue",
                margin: getMargin(left: 24, right: 24, bottom: 48),
                variant: ButtonVariant.OutlineGreenA7003f,
                onTap: () {
                  onTapContinue();
                })));
  }

  onTapContinue() {
    Get.toNamed( AppRoutes.confirmPaymentScreen);
  }

  onTapArrowleft16() {
    Get.back();
  }
}
