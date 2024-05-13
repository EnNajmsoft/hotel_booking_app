import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/functions/handingdatacontroller.dart';
import 'package:HotelAppUser/core/services/services.dart';
import 'package:HotelAppUser/data/datasource/remote/home_data.dart';
import 'package:HotelAppUser/data/datasource/remote/searchdata.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/data/model/roomsmodel.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
abstract class HomeController extends GetxController {
  initialData();
  gethoteldata();
  getroomdata();
  searchdata();
  gotorooms(hotels);
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? username;
  String? userid;

  HomeData homedata = HomeData(Get.find());

  SearchData searchData = SearchData(Get.find());

  List<HotelModel> hotels = [];
  List<RoomsModel> rooms = [];
  List<HotelModel> listhotel_search = [];

  late StatusRequest statusRequest;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    userid = myServices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    search = TextEditingController();
    searchdata();
    initialData();
    gethoteldata();
    getroomdata();
    onDelete();
    super.onInit();
  }

onTapBag() {
    Get.offNamed(
      AppRoutes.myfavorite,
    );
  }
  
  @override
  gethoteldata() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.gethotelData();
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

  getroomdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getroomData(userid);
    print("=============================== room============= $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        rooms.clear();
        List responsedataroom = response['data'];
        rooms.addAll(responsedataroom.map((e) => RoomsModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  // onDelete() async {
  //   var response = await postdeletRequest(linkDeletehotel, {
  //     "id": controller.hotels[index].hotelId,
  //     "imagename": controller.hotels[index].hotelImagMain
  //   });
  //   if (response['status'] == "success") {
  //     Navigator.of(context).pushReplacementNamed("home");
  //   }
  // }

  @override
  gotorooms(hotels) {
    Get.toNamed(AppRoutes.hotelDetailsScreen, arguments: {
      "hotels": hotels,
    });
  }

  searchdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.searchdata(search!.text);
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
