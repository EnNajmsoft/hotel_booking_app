import 'package:get/get.dart';

import 'controller/onboarding_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingThreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OnboardingThreeController controller=  Get.put(OnboardingThreeController());
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle1420x4283,
                          height: getVerticalSize(350),
                          width: getHorizontalSize(428)),
                      Container(
                          width: getHorizontalSize(342),
                          margin: getMargin(left: 42, top: 25, right: 42),
                          child: Text("msg_let_s_discover".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistRomanBold32)),
                      Container(
                          width: getHorizontalSize(368),
                          margin: getMargin(left: 29, top: 10, right: 29),
                          child: Text("msg_lorem_ipsum_dol3".tr,
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
                                // CustomButton(
                                //     height: getVerticalSize(55),
                                //     width: getHorizontalSize(180),
                                //     text: "lbl_skip".tr,
                                //     variant: ButtonVariant.FillGray800,
                                //     onTap: () {
                                //       onTapSkip();
                                //     }),
                                CustomButton(
                                    height: getVerticalSize(54),
                                    width: getHorizontalSize(180),
                                    text: "lbl_next".tr,
                                    margin: getMargin(left: 20, bottom: 1),
                                    onTap: () {
                                      controller.onTapSkip();
                                    })
                              ]))
                    ]))));
  }

  // onTapSkip() {
  //   Get.toNamed(
  //     AppRoutes.signInScreen,
  //   );
  // }


}
