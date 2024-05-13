import 'package:HotelAppUser/controller/myfavoritecontroller.dart';
import 'package:HotelAppUser/core/class/handlingdataview.dart';
import 'package:HotelAppUser/core/utils/color_constant.dart';
import 'package:HotelAppUser/core/utils/image_constant.dart';
import 'package:HotelAppUser/core/utils/size_utils.dart';
import 'package:HotelAppUser/screen/my_bookmarks_screen/widgets/my_bookmarks_item_widget.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());

    return Scaffold(
      backgroundColor: ColorConstant.gray900,
      appBar: CustomAppBar(
          height: getVerticalSize(51),
          leadingWidth: 52,
          title: AppbarTitle(text: "Mybooking".tr, margin: getMargin(left: 16)),
          actions: [
            AppbarImage(
                height: getSize(28),
                width: getSize(28),
                svgPath: ImageConstant.imgMenu1,
                margin: getMargin(left: 24, top: 10, right: 13)),
            AppbarImage(
                height: getSize(28),
                width: getSize(28),
                svgPath: ImageConstant.imgGrid,
                margin: getMargin(left: 20, top: 10, right: 37))
          ]),
      body:   GetBuilder<MyFavoriteController>(
                                  builder: (controller) => HandlingDataView(
                                    statusRequest: controller.statusRequest,
                                    widget: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<MyFavoriteController>(
            builder: ((controller) => ListView(children: [
                  const SizedBox(height: 20),
                  // HandlingDataView(
                  //     statusRequest: controller.statusRequest,
                  GridView.builder(
                
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.data.length,
                    gridDelegate:
                         SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: getVerticalSize(281),
                    mainAxisSpacing: getHorizontalSize(24),
                    crossAxisSpacing: getHorizontalSize(24),
                            crossAxisCount: 2, ),
                    itemBuilder: (context, index) {
                      Center(child: Text('data' ,style: TextStyle(color: Colors.white),));
                      return MyBookmarksItemWidget(
                          itemsModel: controller.data[index]);
                    },
                  )
                ]))),))
      ),
    );
  }
}



















// import 'package:get/get.dart';

// import '../my_bookmarks_screen/widgets/my_bookmarks_item_widget.dart';
// import 'controller/my_bookmarks_controller.dart';
// import 'models/my_bookmarks_item_model.dart';
// import 'package:flutter/material.dart';
// import 'package:HotelAppUser/core/app_export.dart';
// import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
// import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
// import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
// import 'package:HotelAppUser/screen/bookmark_removal_bottomsheet/bookmark_removal_bottomsheet.dart';
// // import 'package:HotelAppUser/screen/bookmark_removal_bottomsheet/controller/bookmark_removal_controller.dart';

// class MyBookmarksScreen extends GetWidget<MyBookmarksController> {
//   @override
//   Widget build(BuildContext context) {
//     MyBookmarksController controller = Get.put(MyBookmarksController());

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: ColorConstant.gray900,
//         appBar: CustomAppBar(
//             height: getVerticalSize(51),
//             leadingWidth: 52,
//             title:
//                 AppbarTitle(text: "Mybooking".tr, margin: getMargin(left: 16)),
//             actions: [
//               AppbarImage(
//                   height: getSize(28),
//                   width: getSize(28),
//                   svgPath: ImageConstant.imgMenu1,
//                   margin: getMargin(left: 24, top: 10, right: 13)),
//               AppbarImage(
//                   height: getSize(28),
//                   width: getSize(28),
//                   svgPath: ImageConstant.imgGrid,
//                   margin: getMargin(left: 20, top: 10, right: 37))
//             ]),
//         body: Padding(
//           padding: getPadding(left: 24, top: 28, right: 24),
//           child: Obx(
//             () => GridView.builder(
//                 shrinkWrap: true,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     mainAxisExtent: getVerticalSize(281),
//                     crossAxisCount: 2,
//                     mainAxisSpacing: getHorizontalSize(24),
//                     crossAxisSpacing: getHorizontalSize(24)),
//                 physics: NeverScrollableScrollPhysics(),
//                 itemCount: controller
//                     .myBookmarksModelObj.value.myBookmarksItemList.value.length,
//                 itemBuilder: (context, index) {
//                   MyBookmarksItemModel model = controller.myBookmarksModelObj
//                       .value.myBookmarksItemList.value[index];
//                   return MyBookmarksItemWidget(model, onTapImgBookmark: () {
//                     onTapImgBookmark();
//                   });
//                 }),
//           ),
//         ),
//       ),
//     );
//   }

//   onTapImgBookmark() {
//     Get.bottomSheet(
//         // BookmarkRemovalBottomsheet(Get.put(BookmarkRemovalController())),
//         BookmarkRemovalBottomsheet(),
//         isScrollControlled: true);
//   }
// }
