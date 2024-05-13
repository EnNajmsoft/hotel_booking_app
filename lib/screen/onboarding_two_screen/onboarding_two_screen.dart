import 'package:get/get.dart';

import 'controller/onboarding_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       OnboardingTwoController controller=   Get.put(OnboardingTwoController());

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle1420x4282,
                          height: getVerticalSize(357),
                          width: getHorizontalSize(428)),
                      Container(
                          width: getHorizontalSize(331),
                          margin: getMargin(left: 48, top: 28, right: 47),
                          child: Text("44".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistRomanBold32)),
                      Container(
                          width: getHorizontalSize(368),
                          margin: getMargin(left: 29, top: 11, right: 29),
                          child: Text("160".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistRegular16.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                      Spacer(),
                      Container(
                          height: getVerticalSize(8),
                          child: SmoothIndicator(
                              offset: 0,
                              count: 3,
                              size: Size.zero,
                              effect: ScrollingDotsEffect(
                                  spacing: 6,
                                  activeDotColor: ColorConstant.cyan600,
                                  dotColor: ColorConstant.gray800,
                                  dotHeight: getVerticalSize(8),
                                  dotWidth: getHorizontalSize(8)))),
                      Padding(
                          padding: getPadding(
                              left: 24, top: 30, right: 24, bottom: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(55),
                                    width: getHorizontalSize(180),
                                    text: "113".tr,
                                    variant: ButtonVariant.FillGray800,
                                    onTap: () {
                                      controller.onTapSkip();
                                    }),
                                CustomButton(
                                    height: getVerticalSize(54),
                                    width: getHorizontalSize(180),
                                    text: "147".tr,
                                    margin: getMargin(left: 20, bottom: 1),
                                    onTap: () {
                                      controller.onTapNext();
                                    })
                              ]))
                    ]))));
  }


}
