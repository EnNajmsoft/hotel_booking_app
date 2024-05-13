import 'package:HotelAppUser/data/model/roomsmodel.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/services/services.dart';

class BookingNameController extends GetxController {
  // TextEditingController statusfilltypedController = TextEditingController();

  TextEditingController? firstnameController;

  TextEditingController? lastnameController;

  TextEditingController? emailController;

  TextEditingController? phoneController;

  RoomsModel? roomselected;
  DateTime? reanstar;
  DateTime? reangend;
  String? price;
 

  MyServices myServices = Get.find();

  String? username;
  String? userid;

  intialData() {
    username = myServices.sharedPreferences.getString("username");
    userid = myServices.sharedPreferences.getString("id");
    firstnameController = TextEditingController();
    lastnameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    roomselected = Get.arguments['roomselected'];
    reanstar = Get.arguments['reanstar'];
    reangend = Get.arguments['reangend'];
    price = Get.arguments['price'];

    print(
        '=============booking========${roomselected!.roomName}======================');
    print('=============booking========$reanstar======================');
    print('=============booking========$reangend======================');
    print('=============booking========$userid======================');
    print('=============booking========$price======================');


    update();
  }

  gotopyment() {
    Get.toNamed(AppRoutes.choosePaymentMethodScreen, arguments: {
      "reanstar": reanstar,
      "reangend": reangend,
      "roomselected": roomselected,
      "bookingfirstname": firstnameController!.text,
      "bookinglastname": lastnameController!.text,
      "bookingphone": phoneController!.text,
      "bookingemail": emailController!.text,
      // "price": price, *************************************************************
    });
  }
  
  gotoaddorder() {
    Get.toNamed(AppRoutes.confirmPaymentScreen, arguments: {
      "userid": userid,
      "reanstar": reanstar,
      "reangend": reangend,
      "roomselected": roomselected,
      "bookingfirstname": firstnameController!.text,
      "bookinglastname": lastnameController!.text,
      "bookingphone": phoneController!.text,
      "bookingemail": emailController!.text,
      "orderStatet": "0",
      "orderprice": price,
    });
  }
  
  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
