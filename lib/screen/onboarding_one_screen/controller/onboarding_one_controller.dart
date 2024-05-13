import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/screen/onboarding_one_screen/models/onboarding_one_model.dart';
import 'package:get/get.dart';

import '../../../core/services/services.dart';

class OnboardingOneController extends GetxController {
  Rx<OnboardingOneModel> onboardingOneModelObj = OnboardingOneModel().obs;

  MyServices myServices = Get.find(); 

  onTapSkip() {
        myServices.sharedPreferences.setString("step", "1");
       Get.toNamed(
      AppRoutes.signInScreen,
    );
    update();
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.onboardingTwoScreen,
    );
      update();
  }

  @override
  void onInit() {

    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
