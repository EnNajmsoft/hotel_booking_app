import '../recently_booked_screen/widgets/listrectanglefour1_item_widget.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RecentlyBookedScreen extends StatelessWidget {
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
                      onTapArrowleft5(context);
                    }),
                title: AppbarTitle(
                    text: "Recently Booked", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgMenu28x28,
                      margin: getMargin(left: 24, top: 10, right: 13)),
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgVideocamera,
                      margin: getMargin(left: 20, top: 10, right: 37))
                ]),
            body: Padding(
                padding: getPadding(left: 24, top: 22, right: 24),
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(24));
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Listrectanglefour1ItemWidget();
                    }))));
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}
