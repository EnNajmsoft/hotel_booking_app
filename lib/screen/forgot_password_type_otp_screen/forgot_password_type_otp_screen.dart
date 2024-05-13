import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgotPasswordTypeOtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(52),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 11, bottom: 13),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                title: AppbarTitle(
                    text: "Forgot Password", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 34, right: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("Code has been send to +1 111 ******99",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRegular16WhiteA700
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.2)))),
                      Padding(
                          padding: getPadding(top: 60),
                          child: PinCodeTextField(
                              appContext: context,
                              length: 4,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {},
                              textStyle: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(24),
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700),
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(61),
                                  fieldWidth: getHorizontalSize(78),
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(12)),
                                  selectedFillColor: ColorConstant.blueGray900,
                                  activeFillColor: ColorConstant.blueGray900,
                                  inactiveFillColor: ColorConstant.blueGray900,
                                  inactiveColor: ColorConstant.gray800,
                                  selectedColor: ColorConstant.gray800,
                                  activeColor: ColorConstant.gray800))),
                      Padding(
                          padding: getPadding(top: 61),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Resend code in ",
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: getHorizontalSize(0.2))),
                                TextSpan(
                                    text: "55",
                                    style: TextStyle(
                                        color: ColorConstant.cyan60001,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: getHorizontalSize(0.2))),
                                TextSpan(
                                    text: " s",
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: getHorizontalSize(0.2)))
                              ]),
                              textAlign: TextAlign.left))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(55),
                text: "Verify",
                margin: getMargin(left: 24, right: 24, bottom: 48),
                variant: ButtonVariant.FillCyan600,
                onTap: () {
                  onTapVerify(context);
                })));
  }

  onTapVerify(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordFilledTypeScreen);
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
