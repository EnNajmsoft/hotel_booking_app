import 'package:HotelAppUser/widgets/homecenter/custombuttonappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_center_controller.dart';
import '../../core/utils/color_constant.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return GetBuilder<HomeCenterControllerImp>(
        builder: (controller) => BottomAppBar(
            shape: const CircularNotchedRectangle(),
          color: ColorConstant.gray900,
          
          height: 60,
            notchMargin: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(controller.listPage.length , ((index) {
                  return CustomButtonAppBar(
                          textbutton: controller.bottomappbar[index]['title'],
                          icondata: controller.bottomappbar[index]['icon'],
                          onPressed: () {
                            controller.changePage(index);
                          },
                          active: controller.currentpage == index ? true : false);
                }))
              ],
            )));
  }
}



