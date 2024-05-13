import 'package:HotelAppUser/controller/SelectDateGuestController.dart';
import 'package:get/get.dart';

class SelectDateGuestBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => SelectDateGuestController());
  }
}
