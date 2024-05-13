import 'dart:io';

import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/functions/handingdatacontroller.dart';
import 'package:HotelAppUser/data/datasource/remote/searchdata.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/data/model/roomsmodel.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/functions/uploadfile.dart';
import '../../../data/datasource/remote/admin/hotel_admin_data.dart';
import 'hotel_admin_controller.dart';

abstract class HotelAddAdminController extends GetxController {
  initialData();
 
}

class HotelAddAdminControllerImp extends HotelAddAdminController {

 HotelAdminData homeadmindata = HotelAdminData(Get.find());

  String userid = "2";
  File? myfile;


  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController hotelnamear;

  late TextEditingController hotelnameen;

  late TextEditingController hoteldescribar;

  late TextEditingController hoteldescriben;

  // late TextEditingController hotelcity;
  // MyServices myServices = Get.find();

  // String? username;
  // String? id;


  StatusRequest statusRequest = StatusRequest.none;


  @override
  initialData() {
    hotelnamear       = TextEditingController();
    hotelnameen       = TextEditingController();
    hoteldescribar    = TextEditingController();
    hoteldescriben    = TextEditingController();
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }


  choosefile() async {
    myfile = await fileUploadGallery();
    update();
  }

  cooseimae() async {
    myfile = await imageUploadeCamera();
    update();
  }


  myback(){
    Get.offAllNamed(AppRoutes.hotelScreenAdmin);
    return Future.value(false);
  }
  addHotel() async {
    if (myfile == null)
      return Get.defaultDialog(
          title: "ُWarning", middleText: "الرجاء اضافة الصورة الخاصة بالفندق");
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await homeadmindata.addhoteldatawitfile(
          userid, hotelnamear.text,
          hotelnameen.text,
          hoteldescribar.text,
          hoteldescriben.text, myfile);
      statusRequest = StatusRequest.success;
      if (response['status'] == "success") {
        print(response['status']);
        Get.offNamed(AppRoutes.hotelScreenAdmin);
        HotelAdminControllerImp c = Get.find();
        c.gethoteldata();
              } else {}
    }
    update();
  }


}
