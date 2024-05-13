import 'package:HotelAppUser/controller/Home_controller.dart';
import 'package:HotelAppUser/controller/myfavoritecontroller.dart';
import 'package:HotelAppUser/core/functions/handingdatacontroller.dart';
import 'package:HotelAppUser/data/datasource/remote/fovorite_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/services/services.dart';



class FavoriteControllerImp extends GetxController {
  FavoriteData favoriteData = FavoriteData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  Map isFavorite = {};

//  key => id room
//  Value => 1 OR 0

  setFavorite(id, val) {
    isFavorite[id] = val;
    update();
  }

  addFavorite(String roomid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.addFavorite(
        myServices.sharedPreferences.getString("id")!, roomid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        MyFavoriteController cf = Get.put(MyFavoriteController());
        cf.getData();
        HomeControllerImp ch = Get.put(HomeControllerImp());
        ch.getroomdata();
        Get.rawSnackbar(
            title: "8".tr,
            messageText:  Text("11".tr));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }

  removeFavorite(String roomid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.removeFavorite(
        myServices.sharedPreferences.getString("id")!, roomid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
          MyFavoriteController cf = Get.put(MyFavoriteController());
          
        cf.getData();
           HomeControllerImp ch = Get.put(HomeControllerImp());
        ch.getroomdata();
        Get.rawSnackbar(
            title: "8".tr,
            messageText:  Text("12".tr));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
         update();
      // End
    }
  }
}
