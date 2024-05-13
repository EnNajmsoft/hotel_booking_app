import 'package:HotelAppUser/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../../controller/auth/verfiycodesignup_controller.dart';

// ignore: must_be_immutable
class ListvolumeItemWidget extends StatelessWidget {
  final ForgetPasswordControllerImp controller;
  ListvolumeItemWidget({required this.controller});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 24,
      ),
      decoration: AppDecoration.outlineCyan600.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: ColorConstant.gray800,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.circleBorder40,
            ),
            child: Container(
              height: getSize(
                80,
              ),
              width: getSize(
                80,
              ),
              padding: getPadding(
                all: 26,
              ),
              decoration: AppDecoration.fillGray800.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder40,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgUser,
                    height: getSize(
                      26,
                    ),
                    width: getSize(
                      26,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 16,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "${controller.email}",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanMedium14.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                  ),
                  child: Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold16.copyWith(
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
    );
  }
}
