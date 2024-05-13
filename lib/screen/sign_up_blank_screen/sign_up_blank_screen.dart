import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:HotelAppUser/widgets/custom_checkbox.dart';
import 'package:HotelAppUser/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/auth/signup_controller.dart';
import '../../core/functions/validinput.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpBlankScreen extends StatelessWidget {
    TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formstatsing = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 11, right: 24, bottom: 11),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // CustomImageView(
                      //     svgPath: ImageConstant.imgArrowleft,
                      //     height: getSize(28),
                      //     width: getSize(28),
                      //     onTap: () {
                      //       onTapImgArrowleft();
                      //     }),
                      Container(
                        width: getHorizontalSize(263),
                        margin: getMargin(top: 93),
                        child: Text("Create your\nAccount",
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold48),
                      ),
                     Form(
                    key: formstatsing,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          validator: (value) {
                            return validInput(value!, 13, 30, 'email');
                          },
                          focusNode: FocusNode(),
                          controller: emailController,
                          hintText: "Email",
                          margin: getMargin(top: 46),
                          padding: TextFormFieldPadding.PaddingT21,
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRegular14Gray500,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                            margin: getMargin(
                                left: 20, top: 20, right: 12, bottom: 20),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgCheckmark),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(60),
                          ),
                        ),
                        GetBuilder<SignUpControllerImp>(
                          builder: (controller) => CustomTextFormField(
                              validator: (value) {
                                return validInput(value!, 6, 30, '');
                              },
                              focusNode: FocusNode(),
                              controller: passwordController,
                              hintText: "Password",
                              margin: getMargin(top: 24),
                              padding: TextFormFieldPadding.PaddingT21_1,
                              fontStyle: TextFormFieldFontStyle
                                  .UrbanistRegular14Gray500,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 20, top: 20, right: 12, bottom: 20),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(60)),
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 20, right: 20, bottom: 20),
                                  child: CustomImageView(
                                      onTap: () {
                                        controller.showPassword();
                                      },
                                      svgPath: ImageConstant.imgDashboard)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(60)),
                              isObscureText: controller.isshowpassword),
                        ),
                            SizedBox(
                              height: 80,
                            ),
                            CustomButton(
                                height: getVerticalSize(55),
                                text: "Sign up",
                                margin: getMargin(top: 20),
                                variant: ButtonVariant.FillCyan600,
                                onTap: () {
                              Get.toNamed(AppRoutes.forgotPasswordFilledTypeScreen,arguments: {
                                "email" : emailController.text,
                                "password" :passwordController.text,
                              });
                                 }),
                          ],
                        ),),
                     
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
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 36, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Already have an account?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRegular14
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))),
                                    GestureDetector(
                                        onTap: () {
                                          // controller.goToSignIn();
                                        },
                                        child: Padding(
                                            padding: getPadding(left: 8),
                                            child: Text("Sign in",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.2)))))
                                  ])))
                    ]))));
  }
 
}
