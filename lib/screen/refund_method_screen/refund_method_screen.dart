import '../refund_method_screen/widgets/refund_method_item_widget.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:HotelAppUser/screen/cancelation_successful_dialog/cancelation_successful_dialog.dart';

class RefundMethodScreen extends StatelessWidget {
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
                      onTapArrowleft19(context);
                    }),
                title: AppbarTitle(
                    text: "Cancel Hotel Booking", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 21, right: 24, bottom: 21),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(369),
                          margin: getMargin(top: 6, right: 10),
                          child: Text(
                              "Please select a payment refund method (only 80% will be refunded).",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRegular18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                      Padding(
                          padding: getPadding(top: 28),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(28));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return RefundMethodItemWidget();
                              })),
                      Container(
                          margin: getMargin(top: 10),
                          padding: getPadding(
                              left: 24, top: 26, right: 24, bottom: 26),
                          decoration: AppDecoration.outlineBlack90014.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage27x441,
                                height: getVerticalSize(27),
                                width: getHorizontalSize(44),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(4))),
                            Padding(
                                padding:
                                    getPadding(left: 12, top: 2, bottom: 2),
                                child: Text("•••• •••• •••• •••• 4679",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold18)),
                            Spacer(),
                            Container(
                                margin: getMargin(top: 3, right: 8, bottom: 3),
                                padding: getPadding(all: 4),
                                decoration: AppDecoration.outlineCyan600011
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: getSize(11),
                                          width: getSize(11),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.cyan60001,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(5))))
                                    ]))
                          ])),
                      Spacer(),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Paid: 479.5",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRegular18.copyWith(
                                    letterSpacing: getHorizontalSize(0.2),
                                    decoration: TextDecoration.lineThrough)),
                            Padding(
                                padding: getPadding(left: 16),
                                child: Text("Refund: 383.8",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold18))
                          ])
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(55),
                text: "Confirm Cancellation",
                margin: getMargin(left: 24, right: 24, bottom: 20),
                variant: ButtonVariant.OutlineGreenA7003f,
                onTap: () {
                  onTapConfirmcancellation(context);
                })));
  }

  onTapConfirmcancellation(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: CancelationSuccessfulDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapArrowleft19(BuildContext context) {
    Navigator.pop(context);
  }
}
