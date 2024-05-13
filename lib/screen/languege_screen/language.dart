
import 'package:HotelAppUser/core/localization/changelocal.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:HotelAppUser/screen/languege_screen/language_widght/custombuttomlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/color_constant.dart'; 

class LanguageScreen extends GetView<LocaleController> {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray900,
      body: Container(  
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1".tr, style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "Ar",
                  onPressed: () {
                    controller.changeLang("ar");
                    Get.toNamed(AppRoutes.onboardingOneScreen) ; 
                  }),
              CustomButtonLang(
                  textbutton: "En",
                  onPressed: () {
                    controller.changeLang("en");
                    Get.toNamed(AppRoutes.onboardingOneScreen); 
                  }),
            ],
          )),
    );
  }
}
