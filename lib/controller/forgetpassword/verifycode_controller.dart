import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/functions/handingdatacontroller.dart';
import 'package:HotelAppUser/data/datasource/remote/forgetpassword/verifycode.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword(String verifycode);
}

class VerifyCodeControllerImp extends VerifyCodeController {
  String? email;
  late TextEditingController verifycode;

  VerifyCodeForgetPasswordData verifyCodeForgetPasswordData =
      VerifyCodeForgetPasswordData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  @override
  checkCode() {}

  @override
  goToResetPassword(verifycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifyCodeForgetPasswordData.postdata(email!, verifycode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoutes.createNewPasswordScreen , arguments: {
          "email" : email
        });
      } else {
        Get.defaultDialog(
            title: "1".tr, middleText: "2".tr);
        statusRequest = StatusRequest.failure;
            Future.delayed(const Duration(milliseconds: 3000), () {
                      Get.offAllNamed(AppRoutes.signInScreen);

        });

      }
    }
    update();
  }

  @override
  void onInit() {
    verifycode = TextEditingController();
    email = Get.arguments['email'];
    print('============email 2 $email=========================');

    super.onInit();
  }
}
