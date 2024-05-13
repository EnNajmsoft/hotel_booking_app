import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/functions/handingdatacontroller.dart';
import 'package:HotelAppUser/data/datasource/remote/auth/verfiycodesignup.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verfiyCodeSignUp);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerfiyCodeSignUpData verfiyCodeSignUpData = VerfiyCodeSignUpData(Get.find());
 
  String? email;
  late TextEditingController verifycode;
  StatusRequest statusRequest = StatusRequest.none ;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp(verfiyCodeSignUp) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verfiyCodeSignUpData.postdata(email!, verfiyCodeSignUp); 
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") { 
        Get.offNamed(AppRoutes.signInScreen, );
      } else {
        Get.defaultDialog(
            title: "1".tr,
            middleText: "2".tr);
        statusRequest = StatusRequest.failure;
        Future.delayed(const Duration(milliseconds: 3000), () {
            Get.offAllNamed(AppRoutes.signUpBlankScreen);
        });
        

      }
    }
    update();
  }

  void onInit() {
    verifycode = TextEditingController();
    email = Get.arguments['email'];
    print('============email 2 $email=========================');

    super.onInit();
  }

   reSend(){
      verfiyCodeSignUpData.resendData(email!); 
   }
 
}
