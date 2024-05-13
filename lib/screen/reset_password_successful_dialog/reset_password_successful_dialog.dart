import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ResetPasswordSuccessfulDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(340),
        padding: getPadding(all: 32),
        decoration: AppDecoration.fillBluegray900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                  svgPath: ImageConstant.imgGroupCyan600,
                  height: getVerticalSize(180),
                  width: getHorizontalSize(185),
                  margin: getMargin(top: 8)),
              Padding(
                  padding: getPadding(top: 34),
                  child: Text("Congratulations!",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold24Cyan60001)),
              Padding(
                  padding: getPadding(top: 17),
                  child: Text("Your account is ready to use",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRegular18
                          .copyWith(letterSpacing: getHorizontalSize(0.2)))),
              CustomButton(
                  height: getVerticalSize(58),
                  text: "Go to Homepage",
                  margin: getMargin(top: 31),
                  onTap: () {
                    onTapGotohomepage(context);
                  })
            ]));
  }

  onTapGotohomepage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }
}
