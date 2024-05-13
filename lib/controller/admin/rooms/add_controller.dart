import 'dart:io';

import 'package:HotelAppUser/controller/admin/rooms/room_admin_controller.dart';
import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/functions/uploadfile.dart';
import '../../../data/datasource/remote/admin/room_admin_data.dart';

abstract class RoomAddAdminController extends GetxController {
  initialData();
}

class RoomAddAdminControllerImp extends RoomAddAdminController {
  RoomAdminData roomadmindata = RoomAdminData(Get.find());

  String userid = "1";
  File? myfile;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  // hotelid, roomname, roomnamear, roomprice, roomdescont, roomnote,

  late TextEditingController roomname;

  late TextEditingController roomnamear;

  late TextEditingController roomprice;

  late TextEditingController roomdescont;

  late TextEditingController roomnote;

  late String hotelid;

  HotelModel? hotelModel;

  // MyServices myServices = Get.find();

  // String? username;
  // String? id;

  StatusRequest statusRequest = StatusRequest.none;

  @override
  initialData() {
    hotelModel = Get.arguments['hotelModel'];
    roomname = TextEditingController();
    roomnamear = TextEditingController();
    roomprice = TextEditingController();
    roomdescont = TextEditingController();
    roomnote = TextEditingController();
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

  addRoom() async {
    if (myfile == null)
      return Get.defaultDialog(
          title: "ُWarning", middleText: "الرجاء اضافة الصورة الخاصة بالفندق");
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await roomadmindata.addroomdatawitfile(
          hotelid,
          roomname.text,
          roomnamear.text,
          roomprice.text,
          roomdescont.text,
          roomnote.text,
          myfile);
      statusRequest = StatusRequest.success;
      if (response['status'] == "success") {
        print(response['status']);
        Get.offNamed(AppRoutes.viewroomadmin);
        RoomAdminControllerImp c = Get.find();
        c.getroomdata();
      } else {}
    }
    update();
  }
}
