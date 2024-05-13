import 'package:get/get.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widgets/custom_image_view.dart';
import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: double.maxFinite,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                svgPath: ImageConstant.imgGroup158,
                height: getVerticalSize(165),
                width: getHorizontalSize(177),
                margin: getMargin(bottom: 5))
          ]),
        ),
      ),
    );
  }
}
