import 'package:get/get.dart';

import '../../../core/services/services.dart';
import '../../../routes/app_routes.dart';
import '../models/onboarding_three_model.dart';

class OnboardingThreeController extends GetxController {
  Rx<OnboardingThreeModel> onboardingThreeModelObj = OnboardingThreeModel().obs;

  MyServices myServices = Get.find();

  onTapSkip() {
    myServices.sharedPreferences.setString("step", "1");
    Get.offAllNamed(
      AppRoutes.signInScreen,
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
