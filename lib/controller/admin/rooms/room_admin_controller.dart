import 'dart:io';

import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/functions/handingdatacontroller.dart';
import 'package:HotelAppUser/data/datasource/remote/searchdata.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/data/model/roomsmodel.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/datasource/remote/admin/room_admin_data.dart';

abstract class RoomAdminController extends GetxController {
  initialData();
  getroomdata();
  deletroom();
  // gotorooms(hotels);
}

class RoomAdminControllerImp extends RoomAdminController {
  String userid = "1";
  File? myfile;
  late String imagename;
  late String roomid;
  bool isActive = true;
  late String isactiveint;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController hotemnamear;

  late TextEditingController hotemnameen;

  // MyServices myServices = Get.find();

  // String? username;
  // String? id;

  RoomAdminData roomadmindata = RoomAdminData(Get.find());
  SearchData searchData = SearchData(Get.find());

  List<RoomsModel> rooms = [];

  HotelModel? hotelModel;

  late String hotelid;

  late StatusRequest statusRequest;

  @override
  initialData() {
    hotelModel = Get.arguments['hotelModel'];
    hotemnamear = TextEditingController();
    hotemnameen = TextEditingController();
    hotelid = hotelModel!.hotelId!;

    // username = myServices.sharedPreferences.getString("username");
    // id = myServices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    initialData();
    deletroom();
    getroomdata();
    super.onInit();
  }


  activeChane(bool value) {
    isActive = value;
    isActive ? isactiveint = "1" : isactiveint = "0";
    editactiveRoom();
    update();
  }

  editactiveRoom() async {
  
      var response = await roomadmindata.editeActivedata(isactiveint , roomid);
      statusRequest = StatusRequest.success;
      if (response['status'] == "success") {
        print(response['status']);
        Get.offAllNamed(AppRoutes.viewroomadmin);
       update();
      } else {}
    
    update();
  }

  @override
  getroomdata() async {
    statusRequest = StatusRequest.loading;
    var response = await roomadmindata.getroomData(hotelid);
    print(
        "=============================== admin rooms============= $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        rooms.clear();
        List responsedata = response['data'];
        rooms.addAll(responsedata.map((e) => RoomsModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  deletroom() async {
    statusRequest = StatusRequest.loading;
    var response = await roomadmindata.deletroomdata(roomid, imagename);
    print(
        "=============================== delet rooms============= $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        print('delete done =========================');
        rooms.removeWhere((element) => element.roomId == roomid);
        
        update();
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  gotoaddroom(HotelModel hotelModel) {
    Get.toNamed(AppRoutes.addroom, arguments: {"hotelModel": hotelModel});
  }

  goToEditRoom(RoomsModel roomModel) {
    Get.toNamed(AppRoutes.editroom, arguments: {"roomModel": roomModel});
  }
}
