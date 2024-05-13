import 'package:HotelAppUser/core/services/services.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  MyServices myServices = Get.find();

  logout() {
       myServices.sharedPreferences
        .setString("step", "1");
    // myServices.sharedPreferences.clear();

    Get.offAllNamed(AppRoutes.signInScreen);
  }
}
