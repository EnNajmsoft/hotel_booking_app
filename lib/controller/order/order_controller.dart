import 'package:HotelAppUser/controller/order/view_order_controller.dart';
import 'package:HotelAppUser/data/model/order_model.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/orderdata.dart';
import '../../data/model/roomsmodel.dart';

abstract class OrderAddController extends GetxController {
  initialData();
}

class OrderAddControllerImp extends OrderAddController {
  OrderData orderdata = OrderData(Get.find());

  // GlobalKey<FormState> formstate = GlobalKey<FormState>();
  // hotelid, roomname, roomnamear, roomprice, roomdescont, roomnote,

  // late TextEditingController roomname;

  // late TextEditingController roomnamear;

  // late TextEditingController roomprice;

  // late TextEditingController roomdescont;

  // late TextEditingController roomnote;

  // late String hotelid;

  // HotelModel? hotelModel;

  MyServices myServices = Get.find();

  String? username;
  String? userid;
  String? bookingfirstname;
  String? bookingphone;
  String? orderStatet;
  DateTime? reanstar;
  DateTime? reangend;
  String? orderprice;
  RoomsModel? roomselected;
  late OrderModel ordermodel;
  StatusRequest statusRequest = StatusRequest.none;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    userid = myServices.sharedPreferences.getString("id");
    roomselected = Get.arguments['roomselected'];
    bookingfirstname = Get.arguments['bookingfirstname'];
    bookingphone = Get.arguments['bookingphone'];
    reanstar = Get.arguments['reanstar'];
    reangend = Get.arguments['reangend'];
    orderStatet = Get.arguments['orderStatet'];
    orderprice = Get.arguments['orderprice'];
        print(
        '=============booking========${roomselected!.roomName}======================');
    print('=============booking========$reanstar======================');
    print('=============booking========$reangend======================');
    print('=============booking userid ========$userid======================');
      
    print('=============bookingpone ========$bookingphone======================');
    print('=============bookingname ========$bookingfirstname======================');
    print('=============booking type========$orderStatet======================');
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }

  myback() {
    // Get.offAllNamed(AppRoutes.hotelScreenAdmin);
    // return Future.value(false);

  }

  addOrder() async {
    statusRequest = StatusRequest.loading;
    Map data = {
      "userid": myServices.sharedPreferences.getString("id"),
      "roomid": roomselected!.roomId,
      "ordercmrname": bookingfirstname,
      "ordercmrphone": bookingphone,
      "orderstartdate": reanstar.toString(),
      "orderenddate": reangend.toString(),
      "orderstatet": orderStatet,
      "orderprice": orderprice ,
    };
    var response = await orderdata.addorder(data);

    statusRequest = StatusRequest.success;
    if (response['status'] == "success") {
      print(response['status']);
      print('scsss add order ====================');
      OrderViewControllerImp c =Get.put(OrderViewControllerImp());
      c.getOrder();
           Get.rawSnackbar(
          title: "8".tr,
          messageText:  Text( "10".tr));
       Get.offAllNamed(AppRoutes.homeScreenContainerScreen);
  
    } else {}
  }
}
