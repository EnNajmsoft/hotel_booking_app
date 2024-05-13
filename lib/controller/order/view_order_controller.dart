import 'package:HotelAppUser/data/model/order_model.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/orderdata.dart';
import '../../data/model/roomsmodel.dart';

abstract class OrderViewController extends GetxController {
  initialData();
  getOrder();
}

class OrderViewControllerImp extends OrderViewController {
  OrderData orderdata = OrderData(Get.find());



  MyServices myServices = Get.find();

  String? username;
  String? userid;


  RoomsModel? roomselected;
  List<OrderModel> orderlist = [];
  List<OrderModel> ordercanellist = [];
  List<OrderModel> ordercompletlist = [];
  StatusRequest statusRequest = StatusRequest.none;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    userid = myServices.sharedPreferences.getString("id");
  getOrder();
  }


  myback() {
    // Get.offAllNamed(AppRoutes.hotelScreenAdmin);
    // return Future.value(false);
  }

//=====حجز مبدئي 0=====مكتمل 1====مكنسل 2   ====//
  getOrder() async {
    statusRequest = StatusRequest.loading;
    var response = await orderdata.getorderData(userid!);
    statusRequest = StatusRequest.success;
    if (response['status'] == "success") {
      // print(response['status']);
      print('scsss view order ====================');
      List responsedata = response['data'];

      orderlist.clear();
      orderlist.addAll(responsedata.map((e) => OrderModel.fromJson(e)));
      orderlist.removeWhere((element) => element.orderStatet != "0");

      ordercompletlist.clear();
      ordercompletlist.addAll(responsedata.map((e) => OrderModel.fromJson(e)));
      ordercompletlist.removeWhere((element) => element.orderStatet != "1");
      
      ordercanellist.clear();
      ordercanellist.addAll(responsedata.map((e) => OrderModel.fromJson(e)));
      ordercanellist.removeWhere((element) => element.orderStatet != "2");
      // Get.offNamed(AppRoutes.viewroomadmin);
      // RoomAdminControllerImp c = Get.find();
      // c.getroomdata();
      update();
    } else {}
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
