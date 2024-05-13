import 'package:HotelAppUser/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardAddedItemWidget extends StatelessWidget {
  CardAddedItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 24,
      ),
      decoration: AppDecoration.outlineBlack90014.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgReply,
            height: getSize(
              32,
            ),
            width: getSize(
              32,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 6,
              bottom: 3,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold18,
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgContrast,
            height: getSize(
              20,
            ),
            width: getSize(
              20,
            ),
            margin: getMargin(
              top: 6,
              right: 8,
              bottom: 6,
            ),
          ),
        ],
      ),
    );
  }
}
