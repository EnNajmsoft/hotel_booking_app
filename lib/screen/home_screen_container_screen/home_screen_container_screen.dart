import 'package:get/get.dart';
import '../../controller/home_center_controller.dart';
import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../widgets/homecenter/custombottomappbarhome.dart';


class HomeScreenContainerScreen extends StatelessWidget {
  const HomeScreenContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeCenterControllerImp());
    return GetBuilder<HomeCenterControllerImp>(
        builder: (controller) => Scaffold(
            backgroundColor: ColorConstant.gray900,
              bottomNavigationBar: 
              const CustomBottomAppBarHome(),
              body: controller.listPage.elementAt(controller.currentpage),
            ));
  }
}




