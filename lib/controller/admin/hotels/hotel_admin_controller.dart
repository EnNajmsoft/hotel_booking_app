import 'dart:io';

import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/functions/handingdatacontroller.dart';
import 'package:HotelAppUser/data/datasource/remote/searchdata.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/data/model/roomsmodel.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/datasource/remote/admin/hotel_admin_data.dart';

abstract class HotelAdminController extends GetxController {
  initialData();
  gethoteldata();
  searchdata();
  delethotel();
}

class HotelAdminControllerImp extends HotelAdminController {
  String userid = "1";
  File? myfile;
  late String imagename;
  late String id;
  late String hotelid;
  bool isActive = true;
  late String isactiveint;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController hotemnamear;

  late TextEditingController hotemnameen;

  // MyServices myServices = Get.find();

  // String? username;
  // String? id;

  HotelAdminData homeadmindata = HotelAdminData(Get.find());
  SearchData searchData = SearchData(Get.find());

  // checkSearch(val) {
  //   if (val == "") {
  //     is_search = false;
  //   }
  //   update();
  // }

  // onSearch() {
  //   is_search = true;

  //   update();
  // }

  // List data = [];
  List<HotelModel> hotels = [];
  List<RoomsModel> rooms = [];
  List<HotelModel> listhotel_search = [];

  late StatusRequest statusRequest;

  @override
  initialData() {
    hotemnamear = TextEditingController();
    hotemnameen = TextEditingController();
    // username = myServices.sharedPreferences.getString("username");
    // id = myServices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    search = TextEditingController();

    initialData();
 
    gethoteldata();
    onDelete();
    super.onInit();
  }

  
  activeChane(bool value ) {
    hotelid = hotelid;
    isActive = value;
    isActive ? isactiveint = "1" : isactiveint = "0";
    editactivehotel();

  }

  editactivehotel() async {
    var response = await homeadmindata.editeActivedata(isactiveint, hotelid);
    statusRequest = StatusRequest.success;
    if (response['status'] == "success") {
      print(response['status']);
    update();
    } else {}

    update();
  }

  @override
  gethoteldata() async {
    statusRequest = StatusRequest.loading;
    var response = await homeadmindata.gethotelData();
    print("=============================== hotels============= $response ");

    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        hotels.clear();
        List responsedata = response['data'];
        hotels.addAll(responsedata.map((e) => HotelModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }



  delethotel() async {
    statusRequest = StatusRequest.loading;
    var response = await homeadmindata.delethoteldata(imagename, id);
    print(
        "=============================== delet hotel============= $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        print('delete done =========================');
        hotels.removeWhere((element) => element.hotelId==id);
        update();
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }



  searchdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homeadmindata.searchdata(search!.text);
    print(
        "=============================== Controller  searcH============= $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        listhotel_search.clear();
        List responsedata = response['data'];
        listhotel_search
            .addAll(responsedata.map((e) => HotelModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  goToEditHotel(HotelModel hotelModel) {
    Get.toNamed(AppRoutes.editHotel, arguments: { "hotelModel": hotelModel });
  }
  goToimagesHotel(HotelModel hotelModel) {
    Get.toNamed(AppRoutes.galleryadminscreen, arguments: {"hotelModel": hotelModel});
  }
goToaddressHotel(HotelModel hotelModel) {
    Get.toNamed(AppRoutes.hoteladdress,
        arguments: {"hotelModel": hotelModel});
  }
  gotorooms(HotelModel hotelModel) {
    Get.toNamed(AppRoutes.viewroomadmin, arguments: {
     "hotelModel": hotelModel 
    });
  }

  gotoOrders(HotelModel hotelModel) {
    Get.toNamed(AppRoutes.orderscreenadmin, arguments: {"hotelModel": hotelModel});
  }

  bool isSearch = false;
  TextEditingController? search;
  checkSearch(val) {
    if (val == "") {
      statusRequest = StatusRequest.none;
      isSearch = false;
    }
    update();
  }

  onSearchItems() {
    isSearch = true;
    searchdata();
    update();
  }
}
