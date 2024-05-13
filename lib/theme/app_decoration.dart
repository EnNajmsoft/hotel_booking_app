import 'package:flutter/material.dart';
import 'package:HotelAppUser/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineCyan600 => BoxDecoration(
        color: ColorConstant.blueGray900,
        border: Border.all(
          color: ColorConstant.cyan600,
          width: getHorizontalSize(
            3,
          ),
        ),
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get outlineCyan600011 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.cyan60001,
          width: getHorizontalSize(
            3,
          ),
        ),
      );
  static BoxDecoration get fillGray800 => BoxDecoration(
        color: ColorConstant.gray800,
      );
  static BoxDecoration get outlineBlack90014 => BoxDecoration(
        color: ColorConstant.blueGray900,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90014,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray8002 => BoxDecoration(
        color: ColorConstant.blueGray90001,
        border: Border.all(
          color: ColorConstant.gray800,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineGray8001 => BoxDecoration(
        color: ColorConstant.gray90001,
        border: Border.all(
          color: ColorConstant.gray800,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBluegray900 => BoxDecoration(
        color: ColorConstant.blueGray900,
      );
  static BoxDecoration get outlineGray800 => BoxDecoration(
        color: ColorConstant.blueGray900,
        border: Border.all(
          color: ColorConstant.gray800,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get gradientGray80000Gray90096 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.gray80000,
            ColorConstant.blueGray90059,
            ColorConstant.gray90096,
          ],
        ),
      );
  static BoxDecoration get txtFillCyan60001 => BoxDecoration(
        color: ColorConstant.cyan60001,
      );
  static BoxDecoration get txtOutlineCyan60001 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.cyan60001,
          width: getHorizontalSize(
            2,
          ),
        ),
      );
  static BoxDecoration get fillCyan60001 => BoxDecoration(
        color: ColorConstant.cyan60001,
      );
  static BoxDecoration get gradientGray80000Gray90002 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            -0.78,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.gray80000,
            ColorConstant.gray90002,
          ],
        ),
      );
  static BoxDecoration get outlineIndigoA20014 => BoxDecoration(
        color: ColorConstant.teal900,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.indigoA20014,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9000c => BoxDecoration(
        color: ColorConstant.blueGray900,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9000c,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineCyan60001 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.cyan60001,
          width: getHorizontalSize(
            2,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius customBorderBL36 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        36,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        36,
      ),
    ),
  );

  static BorderRadius roundedBorder36 = BorderRadius.circular(
    getHorizontalSize(
      36,
    ),
  );

  static BorderRadius customBorderTL40 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        40,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        40,
      ),
    ),
  );

  static BorderRadius txtCircleBorder19 = BorderRadius.circular(
    getHorizontalSize(
      19,
    ),
  );

  static BorderRadius circleBorder40 = BorderRadius.circular(
    getHorizontalSize(
      40,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );

  static BorderRadius roundedBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius circleBorder70 = BorderRadius.circular(
    getHorizontalSize(
      70,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius circleBorder60 = BorderRadius.circular(
    getHorizontalSize(
      60,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    