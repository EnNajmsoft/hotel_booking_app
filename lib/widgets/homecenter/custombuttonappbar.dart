import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final String textbutton;
  final IconData icondata;
  final bool? active;
  const CustomButtonAppBar(
      {Key? key,
      required this.textbutton,
      required this.icondata,
      required this.onPressed,
      required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(icondata,
            color: active == true
                ? ColorConstant.cyan60001
                : ColorConstant.gray500),
        Text(textbutton,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: active == true
                ? AppStyle.txtUrbanistRomanBold10.copyWith(
                    fontSize: 12,
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                    color: ColorConstant.cyan60001,
                  )
                : AppStyle.txtUrbanistRomanMedium10.copyWith(
                    fontSize: 12,
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                    color: ColorConstant.gray500,
                  ),)
      ]),
    );
  }
}
