import 'package:HotelAppUser/controller/admin/images/imagecontroller.dart';
import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/functions/handingdatacontroller.dart';
import 'package:HotelAppUser/core/services/services.dart';
import 'package:HotelAppUser/data/datasource/remote/admin/image_admin_data.dart';
import 'package:HotelAppUser/data/datasource/remote/hotel_ditals.dart';
import 'package:HotelAppUser/data/datasource/remote/rate_data.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/data/model/imae_model.dart';
import 'package:HotelAppUser/data/model/rate_model.dart';
import 'package:HotelAppUser/data/model/roomsmodel.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';

abstract class HotelDitaleController extends GetxController {
  intialData();
  gethhdata();
  getratedata();
  gotoselectdate(RoomsModel hotelselected);
}

class HotelDitaleControllerImp extends HotelDitaleController {
  hotelDitalData hotelDilData = hotelDitalData(Get.find());
  ImageAdminData imageadmindata = ImageAdminData(Get.find());
  RateData ratedata = RateData(Get.find());

  MyServices myServices = Get.find();
  late StatusRequest statusRequest;
  late String? hotelid = '';
  HotelModel? hotel;
  List<RoomsModel> rooms = [];
  List<RateModel> rates = [];
  List<ImageModel> imagesmodel = [];
  @override
  void onInit() {
    intialData();

    super.onInit();
  }

  @override
  intialData() {
  
    hotel = Get.arguments['hotels'];
    hotelid = hotel!.hotelId;
      gethhdata();
    getimagedata();
    getratedata();
    update();
  }

  @override
  gethhdata() async {
    statusRequest = StatusRequest.loading;
    var response = await hotelDilData.gethoteldetalData(
        myServices.sharedPreferences.getString('id'), hotel!.hotelId);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        rooms.clear();
        List responsedataroom = response['data'];
        rooms.addAll(responsedataroom.map((e) => RoomsModel.fromJson(e)));
        print(
            "=============================== Controller ${rooms[1].favorite} ");
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  getratedata() async {
    statusRequest = StatusRequest.loading;
    var response = await ratedata.getrateData(hotel!.hotelId);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        rates.clear();
        List responsedata = response['data'];
        rates.addAll(responsedata.map((e) => RateModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  showrates(lanth, number) {
    if (lanth > number) {
      return number;
    } else {
      return lanth;
    }
  }

  getimagedata() async {
    statusRequest = StatusRequest.loading;
    var response = await imageadmindata.getimageData( hotel!.hotelId );
    print("=============================== images============= $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        imagesmodel.clear();
        List responsedata = response['data'];
        imagesmodel.addAll(responsedata.map((e) => ImageModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  gotoselectdate(roomselected) {
    Get.toNamed(AppRoutes.selectDateGuestScreen, arguments: {
      "roomselected": roomselected,
    });
  }

  goback() {
    Get.offAllNamed(AppRoutes.homeScreenContainerScreen);
  }
}
