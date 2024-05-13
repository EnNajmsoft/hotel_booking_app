import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/data/model/roomsmodel.dart';
// import 'package:HotelAppUser/data/model/roomsmodel.dart';
import 'package:HotelAppUser/data/model/selectdateguesmodel.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDateGuestController extends GetxController {
  Rx<SelectDateGuestModel> selectDateGuestModelObj = SelectDateGuestModel().obs;

//  RoomsModel? roomselectd;
  RoomsModel? roomselected;
  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  Rx<DateTime> focusedDay = DateTime.now().obs;

  Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;
  // Rx<int> dur = dur.obs ;
  var price;
  onRangeSelected() {
    update();
  }

  intialData() {
    rangeStart = focusedDay.value;
    rangeEnd = focusedDay.value;
    focusedDay = DateTime.now().obs;
    //  focusedDay = DateTime.now().obs;
    roomselected = Get.arguments['roomselected'];
    print(
        '=============dateselect========${roomselected!.roomName}======================');
// roomselectd = Get.arguments['roomselectd'];
    price = double.parse('${roomselected!.roomPrice}');

    update();
  }

  getprice() {
    // rangeStart =focusedDay.value  ;
    print('$rangeStart****************');

    price = double.parse('${roomselected!.roomPrice}');
    int dur;
    if (rangeEnd == null) {
      rangeEnd = rangeStart;
      print(rangeStart);
      print(rangeEnd);
      dur = 1;
      print('${dur} ddddddddddddddddddddddd');
      print(price * dur);
      price = price * dur;
      update();
    } else {
      dur = rangeEnd!.difference(rangeStart!).inDays;
    }
    print('${dur} ddddddddddddddddddddddd');
    print(price * dur);
    price = price * dur;
    update();
  }

  gotobooking() {
    getprice();
    Get.toNamed(AppRoutes.bookingNameScreen, arguments: {
      "reanstar": rangeStart,
      "reangend": rangeEnd,
      "roomselected": roomselected,
      "price": price.toString()
    });
  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}
