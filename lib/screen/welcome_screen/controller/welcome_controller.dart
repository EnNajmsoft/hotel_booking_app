import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/screen/welcome_screen/models/welcome_model.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  Rx<WelcomeModel> welcomeModelObj = WelcomeModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(
        AppRoutes.languageScreen,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
