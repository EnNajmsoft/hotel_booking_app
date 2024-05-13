

import 'package:get/get.dart';

import '../../../routes/app_routes.dart';
import '../models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(
        AppRoutes.welcomeScreen,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
