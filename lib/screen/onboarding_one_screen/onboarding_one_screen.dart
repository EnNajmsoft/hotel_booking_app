import 'package:get/get.dart';

import 'controller/onboarding_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OnboardingOneController controller = Get.put(OnboardingOneController());
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle1420x4281,
                          height: getVerticalSize(340),
                          width: getHorizontalSize(428)),
                      Container(
                          width: getHorizontalSize(311),
                          margin: getMargin(left: 58, top: 20, right: 58),
                          //يتم استدعاء ملف الترجمة
                          child: Text("262".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistRomanBold32)),
                      Container(
                          width: getHorizontalSize(368),
                          margin: getMargin(left: 29, top: 10, right: 29),
                          child: Text("159".tr,
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
                              left: 24, top: 20, right: 24, bottom: 20),
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
                                    margin: getMargin(left: 20),
                                    onTap: controller.onTapNext)
                              ]))
                    ]))));
  }
}
