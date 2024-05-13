import 'dart:io';

import 'package:HotelAppUser/controller/admin/hotels/hotel_admin_controller.dart';
import 'package:HotelAppUser/controller/admin/rooms/room_admin_controller.dart';
import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/services/services.dart';
import 'package:HotelAppUser/data/datasource/remote/admin/address_admin_data.dart';
import 'package:HotelAppUser/data/datasource/remote/rate_data.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/data/model/order_model.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/functions/uploadfile.dart';

abstract class RatinController extends GetxController {
  initialData();
}

class RatinControllerImp extends RatinController {
  RateData ratedata = RateData(Get.find());

  GlobalKey<FormState> formstaterate = GlobalKey<FormState>();

  late TextEditingController city;

  MyServices myServices = Get.find();

  String? rate;
  String? hotelId;
  String? orderId;


  StatusRequest statusRequest = StatusRequest.none;
  late TextEditingController comment;

  @override
  initialData() {
    comment = TextEditingController();
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

  addrating() async {
    if (formstaterate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
       Map data = {
       "ratehotelid" : hotelId ,
       "rateorderid" : orderId,
       "ratereating" : rate ,
       "ratecomment" : comment.text,
    };
      var response = await ratedata.addrate(data);
      statusRequest = StatusRequest.success;
      if (response['status'] == "success") {
        print(response['status']);
        Get.back();
      
      } else {
      }
    }
    update();
  }
  
  // getrating() async {
  //     statusRequest = StatusRequest.loading;
  //     update();
  //     var response = await ratedata.getrateData(hotelId);
  //     statusRequest = StatusRequest.success;
  //     if (response['status'] == "success") {
  //       print(response['status']);
  //       Get.back();
  
  //   }
  //   update();
  // }
}
