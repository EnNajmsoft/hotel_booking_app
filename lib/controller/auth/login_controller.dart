import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/functions/handingdatacontroller.dart';
import 'package:HotelAppUser/core/services/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:HotelAppUser/data/datasource/remote/auth/login.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/datasource/remote/auth/login.dart';
import '../../routes/app_routes.dart';

abstract class LoginController extends GetxController {
  login();
  loginadmin();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());

  GlobalKey<FormState> formstatelogin = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;

  bool isshowpassword = true;

  MyServices myServices = Get.find();

  StatusRequest statusRequest = StatusRequest.none;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() async {
    if (formstatelogin.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postdata(email.text, password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          // if (response['data']['users_approve'] == "1") {
            myServices.sharedPreferences
                .setString("id", response['data']['user_id']);
            String userid = myServices.sharedPreferences.getString("id")!;
            myServices.sharedPreferences
                .setString("username", response['data']['user_name']);
                 myServices.sharedPreferences
              .setString("userlastname", response['data']['user_last_name']);
            myServices.sharedPreferences
                .setString("email", response['data']['user_email']);
            myServices.sharedPreferences
              .setString("phone", response['data']['user_phone']);
       myServices.sharedPreferences
              .setString("image", response['data']['user_imag']);
          myServices.sharedPreferences
              .setString("brithday", response['data']['user_brithday']);
          myServices.sharedPreferences
              .setString("gander", response['data']['user_gender']);
    //           Firebase.initializeApp();
    // FirebaseMessaging.instance.subscribeToTopic("users");

            myServices.sharedPreferences.setString("step", "2");
          Get.offAllNamed(AppRoutes.homeScreenContainerScreen);
          
          // } else {
          //   // Get.toNamed(AppRoutes.verfiyCodeSignUp,
          //   //     arguments: {"email": email.text});
          // }
        } else {
          Get.defaultDialog(
              title: "1".tr, middleText: "3".tr);
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }


  @override
  loginadmin() async {
    if (formstatelogin.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postadmindata(email.text, password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          // if (response['data']['users_approve'] == "1") {
          myServices.sharedPreferences
              .setString("adminid", response['data']['owner_id']);
          String adminid = myServices.sharedPreferences.getString("adminid")!;
          myServices.sharedPreferences
              .setString("adminname", response['data']['owner_name']);
          myServices.sharedPreferences
              .setString("userlastname", response['data']['owner_last_name']);
          myServices.sharedPreferences
              .setString("email", response['data']['owner_email']);
          myServices.sharedPreferences
              .setString("phone", response['data']['owner_phone']);

      

          //           Firebase.initializeApp();
          // FirebaseMessaging.instance.subscribeToTopic("users");

          myServices.sharedPreferences.setString("step", "3");
          Get.offAllNamed(AppRoutes.hotelScreenAdmin);

          // } else {
          //   // Get.toNamed(AppRoutes.verfiyCodeSignUp,
          //   //     arguments: {"email": email.text});
          // }
        } else {
          Get.defaultDialog(title: "1".tr, middleText: "3".tr);
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoutes.fillProfileScreen);
  }

  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   print(value);
    //   String? token = value;
    // });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgotPasswordScreen ,arguments: { "email":email.text });
  }
}
