import 'dart:io';
import 'package:HotelAppUser/controller/admin/rooms/room_admin_controller.dart';
import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/data/datasource/remote/admin/room_admin_data.dart';
import 'package:HotelAppUser/data/model/roomsmodel.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/functions/uploadfile.dart';

abstract class RoomEditAdminController extends GetxController {
  initialData();
  editRoom();
}

class RoomEditAdminControllerImp extends RoomEditAdminController {
  RoomAdminData roomadmindata = RoomAdminData(Get.find());

  File? myfile;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController roomname;

  late TextEditingController roomnamear;

  late TextEditingController roomprice;

  late TextEditingController roomdescont;

  late TextEditingController roomnote;

  late String roomid;

  late String roomimage;

  RoomsModel? roomModel;
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
    roomModel = Get.arguments['roomModel'];
    roomname = TextEditingController();
    roomnamear = TextEditingController();
    roomprice = TextEditingController();
    roomdescont = TextEditingController();
    roomnote = TextEditingController();
    roomid = roomModel!.roomId!;
    roomimage = roomModel!.roomMainImag!;
    roomname.text = roomModel!.roomName!;
    roomnamear.text = roomModel!.roomNamear!;
    roomprice.text = roomModel!.roomPrice!;
    roomdescont.text = roomModel!.roomDescont!;
    roomnote.text = roomModel!.roomNote!;
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }

  myback() {
    Get.offAllNamed(AppRoutes.viewroomadmin);
    return Future.value(false);
  }

  editRoom() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await roomadmindata.editroomdata(
          roomid,
          roomname.text,
          roomnamear.text,
          roomprice.text,
          roomdescont.text,
          roomnote.text,
          roomimage,
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
