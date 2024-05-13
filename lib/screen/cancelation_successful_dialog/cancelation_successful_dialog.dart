import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CancelationSuccessfulDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        340,
      ),
      padding: getPadding(
        all: 32,
      ),
      decoration: AppDecoration.fillBluegray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgGroupCyan600,
            height: getVerticalSize(
              180,
            ),
            width: getHorizontalSize(
              185,
            ),
            margin: getMargin(
              top: 8,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 31,
            ),
            child: Text(
              "Successfull!",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold24Cyan60001,
            ),
          ),
          Container(
            width: getHorizontalSize(
              250,
            ),
            margin: getMargin(
              left: 12,
              top: 17,
              right: 13,
            ),
            child: Text(
              "You have successfully canceled your order. 80% funds will be returned to your account",
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtUrbanistRegular18.copyWith(
                letterSpacing: getHorizontalSize(
                  0.2,
                ),
              ),
            ),
          ),
          CustomButton(
            height: getVerticalSize(
              58,
            ),
            text: "OK",
            margin: getMargin(
              top: 29,
            ),
          ),
        ],
      ),
    );
  }
}
