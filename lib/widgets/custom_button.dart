import 'package:HotelAppUser/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT19:
        return getPadding(
          top: 20,
          right: 20,
          bottom: 20,
        );
      case ButtonPadding.PaddingT7:
        return getPadding(
          top: 7,
          right: 7,
          bottom: 7,
        );
      case ButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      case ButtonPadding.PaddingAll8:
        return getPadding(
          all: 9,
        );
      default:
        return getPadding(
          left: 16,
          top: 18,
          right: 16,
          bottom: 18,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineGreenA7003f:
        return ColorConstant.cyan60001;
      case ButtonVariant.FillGray800:
        return ColorConstant.gray800;
      case ButtonVariant.OutlineGray800_1:
        return ColorConstant.blueGray900;
      case ButtonVariant.FillCyan600:
        return ColorConstant.cyan600;
      case ButtonVariant.FillGreenA7001e:
        return ColorConstant.greenA7001e;
      case ButtonVariant.FillRedA2001e:
        return ColorConstant.redA2001e;
      case ButtonVariant.OutlineCyan60001:
        return null;
      default:
        return ColorConstant.cyan60001;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray800_1:
        return BorderSide(
          color: ColorConstant.gray800,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineCyan60001:
        return BorderSide(
          color: ColorConstant.cyan60001,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineGreenA7003f:
      case ButtonVariant.FillGray800:
      case ButtonVariant.FillCyan60001:
      case ButtonVariant.FillCyan600:
      case ButtonVariant.FillGreenA7001e:
      case ButtonVariant.FillRedA2001e:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineGreenA7003f:
        return ColorConstant.greenA7003f;
      case ButtonVariant.FillGray800:
      case ButtonVariant.FillCyan60001:
      case ButtonVariant.OutlineGray800_1:
      case ButtonVariant.FillCyan600:
      case ButtonVariant.FillGreenA7001e:
      case ButtonVariant.OutlineCyan60001:
      case ButtonVariant.FillRedA2001e:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case ButtonShape.RoundedBorder6:
        return BorderRadius.circular(
          getHorizontalSize(
            6.00,
          ),
        );
      case ButtonShape.CircleBorder19:
        return BorderRadius.circular(
          getHorizontalSize(
            19.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.UrbanistSemiBold16WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.UrbanistSemiBold14WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.21,
          ),
        );
      case ButtonFontStyle.UrbanistSemiBold10:
        return TextStyle(
          color: ColorConstant.cyan60001,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.20,
          ),
        );
      case ButtonFontStyle.UrbanistSemiBold16Cyan60001_1:
        return TextStyle(
          color: ColorConstant.cyan60001,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.UrbanistSemiBold10RedA200:
        return TextStyle(
          color: ColorConstant.redA200,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.20,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.38,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder27,
  RoundedBorder16,
  RoundedBorder6,
  CircleBorder19,
}
enum ButtonPadding {
  PaddingT18,
  PaddingT19,
  PaddingT7,
  PaddingAll6,
  PaddingAll8,
}
enum ButtonVariant {
  OutlineGreenA7003f,
  FillGray800,
  FillCyan60001,
  OutlineGray800_1,
  FillCyan600,
  FillGreenA7001e,
  OutlineCyan60001,
  FillRedA2001e,
}
enum ButtonFontStyle {
  UrbanistRomanBold16WhiteA700,
  UrbanistSemiBold16WhiteA700,
  UrbanistSemiBold14WhiteA700,
  UrbanistSemiBold10,
  UrbanistSemiBold16Cyan60001_1,
  UrbanistSemiBold10RedA200,
}
