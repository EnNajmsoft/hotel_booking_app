import 'dart:math';

import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/functions/handingdatacontroller.dart';
import 'package:HotelAppUser/data/datasource/remote/forgetpassword/checkemail.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail(); 
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  
  CheckEmailData checkEmailData  = CheckEmailData(Get.find()) ; 

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  
  StatusRequest statusRequest  = StatusRequest.none ;  

  // late TextEditingController email;
  late String email;
  @override
  checkemail() async  {
    // if (formstate.currentState!.validate()){
       statusRequest = StatusRequest.loading; 
      var response = await checkEmailData.postdata(email);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.toNamed(AppRoutes.forgotPasswordFilledTypeScreen , arguments: {
            "email" : email
          });
        } else {
          Get.defaultDialog(title: "1".tr , middleText: "5".tr); 
          statusRequest = StatusRequest.failure;
        }
   
 
    }
         update();
  }

 
  @override
  void onInit() {
    email = Get.arguments['email'];
    print('============email 1 $email=========================');
    super.onInit();
  }

  @override
  void dispose() {

    super.dispose();
  }
}
