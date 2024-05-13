import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/functions/handingdatacontroller.dart';
import 'package:country_pickers/country.dart';
// import 'package:HotelAppUser/data/datasource/remote/auth/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/datasource/remote/auth/signup.dart';
import '../../routes/app_routes.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
  showPassword();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstatetow = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController userlastname;
  late TextEditingController dateofbirth;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late Country selectedCountry;
  // late String email;
  // late String password;
   String gander ='1';
  List<String> dropdownItemList = ["maile", "fimail"];
   bool isshowpassword = true;
  

   StatusRequest statusRequest = StatusRequest.none;

  SignupData signupData = SignupData(Get.find());

  List data = [];

  @override
  signUp() async {
    if (formstatetow.currentState!.validate()) {
      statusRequest = StatusRequest.loading; 
      update();
      var response = await signupData.postdata(
          username.text,
          userlastname.text,
          email.text,
          phone.text, 
          password.text,
          dateofbirth.text,
          gander
          );
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
         
          Get.toNamed(AppRoutes.virifycodesingupScreen,arguments: {
            "email": email.text

          });
        } else {
   
          Get.defaultDialog(title: "1".tr , middleText: "4".tr) ; 
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      
    }
  }
    showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
  onTapSignup() {
    Get.toNamed(AppRoutes.fillProfileScreen);
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoutes.signInScreen);
  }

  @override
  void onInit() {
    // email = Get.arguments['email'];
    // password = Get.arguments['password'];

    username = TextEditingController();
    userlastname = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    dateofbirth = TextEditingController();

    super.onInit();
  }


  void dispose() {
    username.dispose();
    // email.dispose();
    phone.dispose();
    // password.dispose();
    super.dispose();
  }
}
