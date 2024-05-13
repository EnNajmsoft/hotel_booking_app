import 'package:get/get.dart';

import '../../../core/services/services.dart';
import '../../../routes/app_routes.dart';
import '../models/onboarding_two_model.dart';

class OnboardingTwoController extends GetxController {
  Rx<OnboardingTwoModel> onboardingTwoModelObj = OnboardingTwoModel().obs;

  MyServices myServices = Get.find();

  onTapSkip() {
    myServices.sharedPreferences.setString("step", "1");
    Get.offAllNamed(
      AppRoutes.signInScreen,
    );
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.onboardingThreeScreen,
    );
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
