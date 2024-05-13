import 'package:HotelAppUser/controller/seteingcontroller.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:HotelAppUser/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:HotelAppUser/screen/logout_bottomsheet/logout_bottomsheet.dart';
import 'package:get/get.dart';

import '../../core/services/services.dart';
import '../../linkapi.dart';

// ignore_for_file: must_be_immutable
class ProfileSettingsPage extends StatelessWidget {
  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
        MyServices myServices = Get.find();

        

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(32),
                    width: getSize(32),
                    svgPath: ImageConstant.imgGoogle,
                    margin: getMargin(left: 24, top: 9, bottom: 9),
                    onTap: () {
                      onTapGoogle2(context);
                    }),
                title:
                    AppbarTitle(text: "Profile", margin: getMargin(left: 16)),
                ),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 30, right: 24, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getSize(120),
                              width: getSize(120),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                        url:'${AppLink.linkImageUserRoot}/${myServices.sharedPreferences.getString("image")!}' ,
                                           fit: BoxFit.fill,
                                        height: getSize(120),
                                        width: getSize(120),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(60)),
                                        alignment: Alignment.center),
                                    // CustomImageView(
                                    //     svgPath: ImageConstant.imgEdit,
                                    //     height: getSize(30),
                                    //     width: getSize(30),
                                    //     onTap: () {
                                    //       ////////////////==========================/////////////////////////
                                    //     },
                                    //     alignment: Alignment.bottomRight)
                                  ]),),),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 11),
                              child: Text(" ${myServices.sharedPreferences.getString("username")!} ${myServices.sharedPreferences.getString("userlastname")!}",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold24))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 10),
                              child: Text(" ${myServices.sharedPreferences.getString("email")!}",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistSemiBold14WhiteA700
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2))))),
                      GestureDetector(
                        onTap: () {
                          onTapRowuser(context);
                        },
                        child: Padding(
                          padding: getPadding(top: 60),
                          child: InkWell(
                            onTap: () {
                              Get.offNamed(AppRoutes.editProfileScreen);
                            },
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgUser28x28,
                                  height: getSize(28),
                                  width: getSize(28)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 2, bottom: 3),
                                  child: Text("Edit Profile",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistSemiBold18
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2))))
                            ]),
                          ),
                        ),
                      ),
                    
                      Padding(
                          padding: getPadding(top: 30),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgInfo,
                                height: getSize(28),
                                width: getSize(28)),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 5, bottom: 1),
                                child: Text("Help",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold18
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2))))
                          ])),
                    
                      GestureDetector(
                          onTap: () {
                            onTapRowrefresh(context);
                          },
                          child: Padding(
                              padding: getPadding(top: 30, bottom: 5),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgRefresh,
                                    height: getSize(28),
                                    width: getSize(28)),
                                Padding(
                                    padding: getPadding(left: 20, top: 5),
                                    child: Text("Logout",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold18RedA200
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))))
                              ])))
                    ]))));
  }

  onTapRowuser(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }

  onTapRowalarm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationSettingsScreen);
  }

  onTapRowcheckmark(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.securityScreen);
  }

  onTapRowrefresh(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => LogoutBottomsheet(),
        isScrollControlled: true);
  }

  onTapGoogle2(BuildContext context) async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
