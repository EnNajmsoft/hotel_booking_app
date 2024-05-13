import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:HotelAppUser/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SecurityScreen extends StatelessWidget {
  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(51),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 10, bottom: 13),
                    onTap: () {
                      onTapArrowleft22(context);
                    }),
                title:
                    AppbarTitle(text: "Security", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 28, right: 24, bottom: 28),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: getPadding(top: 1),
                                child: Text("Face ID",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold18
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2)))),
                            CustomSwitch(
                                value: isSelectedSwitch,
                                onChanged: (value) {
                                  isSelectedSwitch = value;
                                })
                          ]),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Remember me",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomSwitch(
                                    value: isSelectedSwitch1,
                                    onChanged: (value) {
                                      isSelectedSwitch1 = value;
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Touch ID",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomSwitch(
                                    value: isSelectedSwitch2,
                                    onChanged: (value) {
                                      isSelectedSwitch2 = value;
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 33),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("Google Authenticator",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowdownCyan60001,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(bottom: 3))
                              ])),
                      CustomButton(
                          height: getVerticalSize(55),
                          text: "Change Password",
                          margin: getMargin(top: 49, bottom: 5),
                          variant: ButtonVariant.FillGray800,
                          onTap: () {
                            onTapChangepassword(context);
                          })
                    ]))));
  }

  onTapChangepassword(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.createNewPasswordScreen, (route) => false);
  }

  onTapArrowleft22(BuildContext context) {
    Navigator.pop(context);
  }
}
