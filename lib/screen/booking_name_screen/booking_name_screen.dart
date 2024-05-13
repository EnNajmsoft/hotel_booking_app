import 'package:HotelAppUser/controller/booking_name_controller.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:HotelAppUser/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// ignore: must_be_immutable
class BookingNameScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
BookingNameController controller = Get.put(BookingNameController());

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 10, bottom: 10),
                    onTap: () {
                      onTapArrowleft13(context);
                    }),
                title: AppbarTitle(
                    text: "14".tr, margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 31, right: 24, bottom: 31),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
    
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.firstnameController,
                          hintText: "Daniel",
                          margin: getMargin(top: 24)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.lastnameController,
                          hintText: "12/27/1995",
                          margin: getMargin(top: 24),
                          padding: TextFormFieldPadding.PaddingT19,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 19, right: 22, bottom: 19),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorConstant.cyan600,
                                      width: getHorizontalSize(1),
                                      strokeAlign: strokeAlignCenter)),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCalendarCyan600)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.emailController,
                          hintText: "user@domain.com",
                          margin: getMargin(top: 24),
                          padding: TextFormFieldPadding.PaddingT19,
                          textInputType: TextInputType.emailAddress,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 20, right: 22, bottom: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorConstant.cyan600,
                                      width: getHorizontalSize(1),
                                      strokeAlign: strokeAlignCenter)),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgClockCyan600)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.phoneController,
                          hintText: "+1 123 456 789 000",
                          margin: getMargin(top: 24, bottom: 5),
                          padding: TextFormFieldPadding.PaddingT21,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 20, top: 19, right: 12, bottom: 19),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgTelevisionGray50)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)))
                    ])),
            bottomNavigationBar: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButton(
                    height: getVerticalSize(55),
                    text: "15".tr,
                    margin: getMargin(left: 24, right: 24, bottom: 20),
                    variant: ButtonVariant.OutlineGreenA7003f,
                    onTap: () {
                   controller.gotoaddorder();
                    }),


                       CustomButton(
                    height: getVerticalSize(55),
                    text: "الدفع الالكتروني",
                    margin: getMargin(left: 24, right: 24, bottom: 48),
                    variant: ButtonVariant.OutlineGreenA7003f,
                    onTap: () {
                      controller.gotopyment();
                    }),
              ],
         
            )));
  }

  onTapContinue(BuildContext context) {
  }

  onTapArrowleft13(BuildContext context) {
    Navigator.pop(context);
  }
}
