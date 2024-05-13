import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:HotelAppUser/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class NotificationSettingsScreen extends StatelessWidget {
  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

  bool isSelectedSwitch4 = false;

  bool isSelectedSwitch5 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 10, bottom: 10),
                    onTap: () {
                      onTapArrowleft21(context);
                    }),
                title: AppbarTitle(
                    text: "Notifications", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 32, right: 24, bottom: 32),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: getPadding(bottom: 1),
                                child: Text("General Notification",
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
                                    child: Text("Sound",
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
                                    child: Text("Vibrate",
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
                          padding: getPadding(top: 31),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("App Updates",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomSwitch(
                                    margin: getMargin(bottom: 1),
                                    value: isSelectedSwitch3,
                                    onChanged: (value) {
                                      isSelectedSwitch3 = value;
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("New Service Available",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomSwitch(
                                    value: isSelectedSwitch4,
                                    onChanged: (value) {
                                      isSelectedSwitch4 = value;
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 31, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("New tips available",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                CustomSwitch(
                                    margin: getMargin(bottom: 1),
                                    value: isSelectedSwitch5,
                                    onChanged: (value) {
                                      isSelectedSwitch5 = value;
                                    })
                              ]))
                    ]))));
  }

  onTapArrowleft21(BuildContext context) {
    Navigator.pop(context);
  }
}
