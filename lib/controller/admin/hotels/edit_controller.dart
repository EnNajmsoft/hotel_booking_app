import 'dart:io';

import 'package:HotelAppUser/controller/admin/hotels/hotel_admin_controller.dart';
import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/functions/uploadfile.dart';
import '../../../data/datasource/remote/admin/hotel_admin_data.dart';

abstract class HotelEditAdminController extends GetxController {
  initialData();
  editHotel();
}

class HotelEditAdminControllerImp extends HotelEditAdminController {
  HotelAdminData homeadmindata = HotelAdminData(Get.find());


  File? myfile;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController hotelnamear;

  late TextEditingController hotelnameen;

  late TextEditingController hoteldescribar;

  late TextEditingController hoteldescriben;

  late String hotelid;

  late String hotelimage;
  

  HotelModel? hotelModel;
  // MyServices myServices = Get.find();

  // String? username;
  // String? id;

  StatusRequest statusRequest = StatusRequest.none;
  
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
    hotelModel   = Get.arguments['hotelModel'];
    hotelnamear   = TextEditingController();
    hotelnameen    = TextEditingController();
    hoteldescribar = TextEditingController();
    hoteldescriben = TextEditingController();
    hotelid      = hotelModel!.hotelId!;
    hotelimage   = hotelModel!.hotelImagMain!;
    hotelnamear.text = hotelModel!.hotelNameAr!;
    hotelnameen.text =hotelModel!.hotelNameEn!;
    hoteldescribar.text =hotelModel!.hotelDescribAr!;
    hoteldescriben.text =hotelModel!.hotelDescribEn!;


  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }


  myback() {
    Get.offAllNamed(AppRoutes.hotelScreenAdmin);
    return Future.value(false);
  }

  editHotel() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await homeadmindata.edithoteldata(
          hotelid,
          hotelimage,
          hotelnamear.text,
          hotelnameen.text,
          hoteldescribar.text,
          hoteldescriben.text, myfile);
      statusRequest = StatusRequest.success;
      if (response['status'] == "success") {
        print(response['status']);
        Get.offNamed(AppRoutes.hotelScreenAdmin);
        HotelAdminControllerImp c =Get.find();
        c.gethoteldata();
      } else {}
    }
    update();
  }
}
