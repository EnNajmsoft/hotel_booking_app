import 'dart:io';

import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/functions/handingdatacontroller.dart';
import 'package:HotelAppUser/data/datasource/remote/user_data.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/data/model/usermodel.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/functions/uploadfile.dart';
import '../core/services/services.dart';

abstract class EditProfilecontroller extends GetxController {
  initialData();
  getdata();
}

class EditProfilecontrollerImp extends EditProfilecontroller {
 MyServices myServices = Get.find();

  GlobalKey<FormState> formstateedit = GlobalKey<FormState>();


  UserData userdata = UserData(Get.find());


 String? userid_serv;
 String? user_name_serv;
  String? user_namelste_serv;
 String? user_email_serv;
  String? user_phone_serv;
  String? user_image_serv;
  String? user_brithday_serv;
  
  File? myfile;
 
  late StatusRequest statusRequest;
  TextEditingController? username;
  TextEditingController? userlastname;
  TextEditingController? useremail;
  TextEditingController? userphone;
  TextEditingController? userbrithday;


  choosefile() async {
    myfile = await fileUploadGallery();
    update();
  }

  cooseimae() async {
    myfile = await imageUploadeCamera();
    update();
  }
  @override
  initialData() {
    username = TextEditingController();
    userlastname = TextEditingController();
    useremail = TextEditingController();
    userphone = TextEditingController();
    userbrithday = TextEditingController();
    userid_serv = myServices.sharedPreferences.getString("id");
    user_name_serv = myServices.sharedPreferences.getString("username");
    user_namelste_serv = myServices.sharedPreferences.getString("userlastname");
    user_email_serv = myServices.sharedPreferences.getString("email");
    user_phone_serv = myServices.sharedPreferences.getString("phone");
    user_brithday_serv = myServices.sharedPreferences.getString("brithday");
    user_image_serv = myServices.sharedPreferences.getString("image");
 
    username!.text = user_name_serv!;
    userlastname!.text = user_namelste_serv!;
    useremail!.text = user_email_serv!;
    userphone!.text = user_phone_serv!;
    userbrithday!.text = user_brithday_serv!;

  }

  @override
  void onInit() {

    initialData();

    getdata();
    super.onInit();
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await userdata.getData(userid_serv);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
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

      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }



  // @override
  // gotorooms(hotels) {
  //   Get.toNamed(AppRoutes.hotelDetailsScreen, arguments: {
  //     "hotels": hotels,
  //   });
  // }

  // editdata() async {
  //   statusRequest = StatusRequest.loading;
  //   var response = await userdata.editdata(
  //     userid_serv,
  //     username!.text,
  //     userlastname!.text,
  //     useremail!.text,
  //     userphone!.text,
  //     'user_image_serv',
  //     '1',
  //   );
  //   print("=============================== Controller $response ");
  //   statusRequest = handlingData(response);
  //   if (StatusRequest.success == statusRequest) {
  //     if (response['status'] == "success") {
  //       print('seccessssssssssssssssssssssssssss');
  //     } else {
  //       statusRequest = StatusRequest.failure;
  //       print('errorrrrrrrrrrrrrrrrrrrrrrrr');

  //     }
  //   }
  //   update();
  // }
  editUserData() async {
    if (formstateedit.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await userdata.edituserata(
      userid_serv,
      username!.text,
      userlastname!.text,
      useremail!.text,
      userphone!.text,
      user_brithday_serv,
      user_image_serv,
      "1"
         , myfile);
       print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        print('seccessssssssssssssssssssssssssss');
       getdata();
         Get.offAllNamed(AppRoutes.homeScreenContainerScreen);
           Get.rawSnackbar(
              title: "8".tr,
              messageText: Text("10".tr));
        
      } else {
        statusRequest = StatusRequest.failure;
        print('errorrrrrrrrrrrrrrrrrrrrrrrr');

      }
    }
    update();
  }
    }
    
      @override
      gotorooms(hotels) {
    // TODO: implement gotorooms
    throw UnimplementedError();
      }

  }


