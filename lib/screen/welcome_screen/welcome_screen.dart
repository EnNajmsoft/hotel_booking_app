import 'package:get/get.dart';

import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:HotelAppUser/core/app_export.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.gray900,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgWelcomescreen),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 32, top: 45, right: 32, bottom: 45),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Spacer(),
                          Text("139".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold48),
                          Padding(
                              padding: getPadding(top: 23),
                              child: Text("133".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBlack64)),
                          Container(
                              width: getHorizontalSize(327),
                              margin: getMargin(top: 41, right: 36),
                              child: Text("199".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistSemiBold18
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2))))
                        ])))));
  }
}
