import 'package:HotelAppUser/data/model/booking_name_model.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/data/model/roomsmodel.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ChoosePaymentMethodController extends GetxController {
  // Rx<ChoosePaymentMethodModel> choosePaymentMethodModelObj =
  //     ChoosePaymentMethodModel().obs;
  String? bookingfirstname;
  String? bookinglastname;
  String? bookingphone;
  String? bookingemail;
  RoomsModel? roomselected;
  DateTime? reanstar;
  DateTime? reangend;
  double? orderprice;


  intialData() {
    roomselected = Get.arguments['roomselected'];
    reanstar = Get.arguments['reanstar'];
    reangend = Get.arguments['reangend'];
    bookingfirstname = Get.arguments['bookingfirstname'];
    bookinglastname = Get.arguments['bookinglastname'];
    bookingphone = Get.arguments['bookingphone'];
    bookingemail = Get.arguments['bookingemail'];
    orderprice = Get.arguments['orderprice'];
    

    print('=============pymenting========${roomselected!.roomName}======================');
    print('=============pymenting========$reanstar======================');
    print('=============pymenting========$reangend======================');
    print('=============pymenting========$bookingfirstname ==$bookinglastname == $bookingemail==$bookingphone====================');

// roomselectd = Get.arguments['roomselectd'];
    update();
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
