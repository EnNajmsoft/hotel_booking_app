import 'dart:io';

import 'package:HotelAppUser/controller/admin/hotels/hotel_admin_controller.dart';
import 'package:HotelAppUser/controller/admin/images/imagecontroller.dart';
import 'package:HotelAppUser/controller/admin/rooms/room_admin_controller.dart';
import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/services/services.dart';
import 'package:HotelAppUser/data/datasource/remote/admin/address_admin_data.dart';
import 'package:HotelAppUser/data/datasource/remote/admin/image_admin_data.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/functions/uploadfile.dart';

abstract class ImageAddAdminController extends GetxController {
  initialData();
}

class ImageAddAdminControllerImp extends ImageAddAdminController {
  ImageAdminData imageadmindata = ImageAdminData(Get.find());

  String userid = "1";
  File? myfile;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();


  late String hotelid;

  HotelModel? hotelModel;

  MyServices myServices = Get.find();



  StatusRequest statusRequest = StatusRequest.none;

  @override
  initialData() {
    hotelModel = Get.arguments['hotelModel'];
    hotelid = hotelModel!.hotelId!;
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

  myback() {
    Get.offAllNamed(AppRoutes.hotelScreenAdmin);
    return Future.value(false);
  }

  addimage() async {
      statusRequest = StatusRequest.loading;
      var response = await imageadmindata.addimagehoteldatawitfile(
        hotelid, myfile
   
      );
      statusRequest = StatusRequest.success;
      if (response['status'] == "success") {
        print(response['status']);
        Get.offNamed(AppRoutes.galleryadminscreen);
        ImaeAdminControllerImp c = Get.put(ImaeAdminControllerImp()) ;
        c.getimagedata(hotelModel!);
      } else {}
    
    update();
  }
}
