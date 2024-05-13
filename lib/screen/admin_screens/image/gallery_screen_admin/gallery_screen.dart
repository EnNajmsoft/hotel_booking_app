import 'package:HotelAppUser/controller/admin/images/imagecontroller.dart';
import 'package:HotelAppUser/screen/admin_screens/image/gallery_screen_admin/widgets/gallery_item_widget.dart';
import 'package:get/get.dart';

import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GalleryAdminScreen extends StatelessWidget {
  ImaeAdminControllerImp controller = Get.put(ImaeAdminControllerImp());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        appBar: CustomAppBar(
          height: getVerticalSize(51),
          leadingWidth: 52,
          leading: AppbarImage(
              height: getSize(28),
              width: getSize(28),
              svgPath: ImageConstant.imgArrowleft,
              margin: getMargin(left: 24, top: 10, bottom: 13),
              onTap: () {
                Get.back();
              }),
          title: AppbarTitle(
              text: "Gallery Photos ${controller.hotel!.hotelNameAr}",
              margin: getMargin(left: 16)),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(AppRoutes.addimagewidet,
                arguments: {"hotelModel": controller.hotel!});
          },
          child: Icon(Icons.add),
        ),
        body: GetBuilder<ImaeAdminControllerImp>(
          builder: (controller) => Padding(
            padding: getPadding(left: 24, top: 28, right: 24),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: getVerticalSize(141),
                    crossAxisCount: 2,
                    mainAxisSpacing: getHorizontalSize(16),
                    crossAxisSpacing: getHorizontalSize(16)),
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.imadesmodel.length,
                itemBuilder: (context, index) {
                  return GalleryItemAdminWidget(
                    image: controller.imadesmodel[index],
                    hotel: controller.hotel,
                  );
                }),
          ),
        ),
      ),
    );
  }
}
