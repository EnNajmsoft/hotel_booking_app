import 'dart:io';

import 'package:HotelAppUser/controller/admin/hotels/hotel_admin_controller.dart';
import 'package:HotelAppUser/controller/admin/rooms/room_admin_controller.dart';
import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/data/datasource/remote/admin/address_admin_data.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/functions/uploadfile.dart';

abstract class AddressAddAdminController extends GetxController {
  initialData();
}

class AddressAddAdminControllerImp extends AddressAddAdminController {
  AddressHotelAdminData addressadmindata = AddressHotelAdminData(Get.find());

  String userid = "1";
  File? myfile;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  // hotelid, roomname, roomnamear, roomprice, roomdescont, roomnote,

  late TextEditingController city;

  late TextEditingController street;

  late TextEditingController lat;

  late TextEditingController long;

  late TextEditingController note;

  late String hotelid;

  HotelModel? hotelModel;

  // MyServices myServices = Get.find();

  // String? username;
  // String? id;

  StatusRequest statusRequest = StatusRequest.none;

  @override
  initialData() {
    hotelModel = Get.arguments['hotelModel'];
    city = TextEditingController();
    street = TextEditingController();
    lat = TextEditingController();
    long = TextEditingController();
    note = TextEditingController();
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

  addaddress() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await addressadmindata.addaddresshotelData(
          hotelid,
          city.text,
          street.text,
          lat.text,
          long.text,
          note.text,
          );
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
