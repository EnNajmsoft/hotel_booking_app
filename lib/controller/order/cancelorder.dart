import 'package:HotelAppUser/controller/order/view_order_controller.dart';
import 'package:HotelAppUser/data/datasource/remote/orderdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../routes/app_routes.dart';


abstract class CancelOrderController extends GetxController {
  initialData();
  editOeder(orderid);
}

class CancelOrderControllerImp extends CancelOrderController {
  OrderData orderdata = OrderData(Get.find());


  // GlobalKey<FormState> formstate = GlobalKey<FormState>();


  // late TextEditingController commente;

 


  StatusRequest statusRequest = StatusRequest.none;

  @override
  initialData() {

  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }

  // myback() {
  //   Get.offAllNamed(AppRoutes.viewroomadmin);
  //   return Future.value(false);
  // }

  editOeder(orderid) async {
      var response = await orderdata.cancelorder(
          orderid,
   );
      statusRequest = StatusRequest.success;
      if (response['status'] == "success") {
        print(response['status']);
      print('cancel scess ======================');
            Get.rawSnackbar(
          title: "8".tr,
          messageText:  Text("9".tr));
        Get.offNamed(AppRoutes.bookingOngoingTabContainerPage);
        OrderViewControllerImp c = Get.find();
        c.getOrder();
      } else {}
    
    update();
  }
}
