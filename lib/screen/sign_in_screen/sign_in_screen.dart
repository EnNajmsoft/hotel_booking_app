import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:HotelAppUser/widgets/custom_checkbox.dart';
import 'package:HotelAppUser/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../controller/auth/login_controller.dart';
import '../../core/functions/alertexitapp.dart';
import '../../core/functions/validinput.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  LoginControllerImp controller = Get.put(LoginControllerImp());
  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        resizeToAvoidBottomInset: false,
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
            width: double.maxFinite,
            padding: getPadding(left: 24, top: 11, right: 24, bottom: 11),
            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
   
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: getHorizontalSize(288),
                      margin: getMargin(top: 79, right: 91),
                      child: Text("Login to your\nAccount",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold48))),
              SizedBox(
                height: 10,
              ),
              Form(
                key: controller.formstatelogin,
                child: Column(
                  children: [
                    CustomTextFormField(
                      validator: (value) {
                        return validInput(value!, 5, 30, '');
                      },
                      focusNode: FocusNode(),
                      controller: controller.email,
                      hintText: "Email",
                      margin: getMargin(top: 46),
                      padding: TextFormFieldPadding.PaddingT21,
                      fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500,
                      textInputType: TextInputType.emailAddress,
                      prefix: Container(
                        margin:
                            getMargin(left: 20, top: 20, right: 12, bottom: 20),
                        child:
                            CustomImageView(svgPath: ImageConstant.imgCheckmark),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(60),
                      ),
                    ),
                    GetBuilder<LoginControllerImp>(
                      builder: (controller) => 
                       CustomTextFormField(
                          validator: (value) {
                            return validInput(value!, 6, 40, '');
                          },
                          focusNode: FocusNode(),
                          controller: controller.password,
                          hintText: "Password",
                          margin: getMargin(top: 24),
                          padding: TextFormFieldPadding.PaddingT21_1,
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRegular14Gray500,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 20, top: 20, right: 12, bottom: 20),
                              child:
                                  CustomImageView(svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(60)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 20, right: 20, bottom: 20),
                              child: CustomImageView(
                          
                          onTap: () {
                            controller.showPassword();
                          },
                                  svgPath: ImageConstant.imgDashboard)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(60)),
                          isObscureText: controller.isshowpassword),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    CustomButton(
                        onTap: () {
                          controller.login();
                        },
                        height: getVerticalSize(55),
                        text: "Sign in",
                        margin: getMargin(top: 24),
                        variant: ButtonVariant.FillCyan600),
                             SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                        onTap: () {
                          controller.loginadmin();
                        },
                        height: getVerticalSize(55),
                        text: "Sign in as admin",
                        margin: getMargin(top: 24),
                        variant: ButtonVariant.FillCyan600),
                  ],
                ),
              ),
              GestureDetector(
                  onTap: () {
                  controller.goToForgetPassword();
                  },
                  child: Padding(
                      padding: getPadding(top: 27),
                      child: Text("Forgot the password?",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistSemiBold16
                              .copyWith(letterSpacing: getHorizontalSize(0.2))))),
              Padding(
                  padding: getPadding(left: 10, top: 26, right: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: getPadding(top: 13, bottom: 7),
                            child: SizedBox(
                                width: getHorizontalSize(360),
                                child: Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: ColorConstant.gray800))),
                      ])),
              Padding(
                padding: getPadding(top: 50, bottom: 5),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                      padding: getPadding(bottom: 1),
                      child: Text("Don’t have an account?",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRegular14
                              .copyWith(letterSpacing: getHorizontalSize(0.2)))),
                  GestureDetector(
                    onTap: () {
                    controller.goToSignUp();
                    },
                    child: Padding(
                      padding: getPadding(left: 8, top: 1),
                      child: Text(
                        "Sign up",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtUrbanistSemiBold14.copyWith(
                          letterSpacing: getHorizontalSize(0.2),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }

}
