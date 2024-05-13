import 'package:HotelAppUser/controller/choosePaymentMethodController.dart';
import 'package:get/get.dart';
import '../choose_payment_method_screen/widgets/listreply_item_widget.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ChoosePaymentMethodScreen extends StatelessWidget {
  ChoosePaymentMethodController controller =Get.put(ChoosePaymentMethodController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(52),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 10, bottom: 14),
                    onTap: () {
                      onTapArrowleft14();
                    }),
                title:
                    AppbarTitle(text: "Payment", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgQrcode,
                      margin:
                          getMargin(left: 24, top: 10, right: 24, bottom: 14))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 29, right: 24, bottom: 29),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Payment Methods",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold18),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtAddnewcard();
                                },
                                child: Padding(
                                    padding: getPadding(bottom: 2),
                                    child: Text("Add New Card",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRomanBold16Cyan60001
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))))
                          ]),
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
                                return ListreplyItemWidget();
                              }))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(55),
                text: "Continue",
                margin: getMargin(left: 24, right: 24, bottom: 48),
                variant: ButtonVariant.OutlineGreenA7003f,
                onTap: () {
                  onTapContinue();
                })));
  }

  onTapTxtAddnewcard() {
    Get.toNamed( AppRoutes.addNewCardScreen);
  }

  onTapContinue() {
    Get.toNamed( AppRoutes.addNewCardScreen);
  }

  onTapArrowleft14() {
   Get.back();
  }
}
