import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LetSYouInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 11, right: 24, bottom: 11),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(28),
                          width: getSize(28),
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Spacer(),
                      Padding(
                          padding: getPadding(bottom: 10),
                          child: Text("Let’s you in",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold48)),
                      CustomButton(
                          height: getVerticalSize(60),
                          text: "Continue with Facebook",
                          variant: ButtonVariant.OutlineGray800_1,
                          shape: ButtonShape.RoundedBorder16,
                          padding: ButtonPadding.PaddingT19,
                          fontStyle:
                              ButtonFontStyle.UrbanistSemiBold16WhiteA700,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFacebook))),
                      CustomButton(
                          height: getVerticalSize(60),
                          text: "Continue with Google",
                          margin: getMargin(top: 16),
                          variant: ButtonVariant.OutlineGray800_1,
                          shape: ButtonShape.RoundedBorder16,
                          padding: ButtonPadding.PaddingT19,
                          fontStyle:
                              ButtonFontStyle.UrbanistSemiBold16WhiteA700,
                          prefixWidget: Container(
                              margin: getMargin(right: 11),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgGoogle24x24))),
                      CustomButton(
                          height: getVerticalSize(60),
                          text: "Continue with Apple",
                          margin: getMargin(top: 16),
                          variant: ButtonVariant.OutlineGray800_1,
                          shape: ButtonShape.RoundedBorder16,
                          padding: ButtonPadding.PaddingT19,
                          fontStyle:
                              ButtonFontStyle.UrbanistSemiBold16WhiteA700,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFrame))),
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup16,
                          height: getVerticalSize(9),
                          width: getHorizontalSize(360),
                          margin: getMargin(top: 58)),
                      CustomButton(
                          height: getVerticalSize(55),
                          text: "Sign in with password",
                          margin: getMargin(top: 55),
                          variant: ButtonVariant.OutlineGreenA7003f,
                          onTap: () {
                            onTapSigninwithpassword(context);
                          }),
                      Padding(
                          padding: getPadding(top: 100, bottom: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Don’t have an account?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRegular14
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSignup(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 8, top: 1),
                                        child: Text("Sign up",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistSemiBold14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2)))))
                              ]))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSigninwithpassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }

  onTapTxtSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpBlankScreen);
  }
}
