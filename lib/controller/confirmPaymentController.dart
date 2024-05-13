import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/functions/handingdatacontroller.dart';
import 'package:HotelAppUser/data/datasource/remote/hotel_ditals.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/data/model/roomsmodel.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:get/get.dart';

import '../core/services/services.dart';

abstract class ConfirmPaymentController extends GetxController {
  intialData();
  gethhdata();
  gotoselectdate(RoomsModel hotelselected);
}

class ConfirmPaymentControllerImp extends ConfirmPaymentController {
  hotelDitalData hotelDilData = hotelDitalData(Get.find());
MyServices myServices = Get.find();

  late StatusRequest statusRequest;
  late String? hotelid = '';
  HotelModel? hotel;
  List<RoomsModel> rooms = [];
  @override
  void onInit() {
    intialData();

    gethhdata();
    super.onInit();
  }

  @override
  intialData() {
    hotel = Get.arguments['hotels'];
    hotelid = hotel!.hotelId;

    update();
  }

  @override
  gethhdata() async {
    statusRequest = StatusRequest.loading;
    var response = await hotelDilData.gethoteldetalData(
        myServices.sharedPreferences.getString('id'), hotelid);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        rooms.clear();
        List responsedataroom = response['rooms'];
        rooms.addAll(responsedataroom.map((e) => RoomsModel.fromJson(e)));
    print("=============================== Controller ${response['favorite']} ");

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

  @override
  void dispose() {
    super.dispose();
    update();
  }
}
