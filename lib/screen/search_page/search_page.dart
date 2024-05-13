import '../search_page/widgets/listrectanglefour2_item_widget.dart';
import '../search_page/widgets/listsizemediumtypef_item_widget.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatelessWidget {
  TextEditingController searchbarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray900,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomSearchView(
                                focusNode: FocusNode(),
                                controller: searchbarController,
                                hintText: "Search",
                                margin: getMargin(left: 24, top: 24, right: 24),
                                prefix: Container(
                                    margin: getMargin(
                                        left: 20,
                                        top: 18,
                                        right: 12,
                                        bottom: 18),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgSearch)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56)),
                                suffix: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 21,
                                        right: 23,
                                        bottom: 21),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorConstant.cyan60001,
                                            width: getHorizontalSize(1),
                                            strokeAlign: strokeAlignCenter)),
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgMenuCyan60001)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(56))),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    height: getVerticalSize(62),
                                    child: ListView.separated(
                                        padding: getPadding(left: 24, top: 24),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(12));
                                        },
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return ListsizemediumtypefItemWidget();
                                        }))),
                            Padding(
                                padding:
                                    getPadding(left: 24, top: 24, right: 24),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 2, bottom: 3),
                                          child: Text("Recommended (586,379)",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold18)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgMenu28x68,
                                          height: getVerticalSize(28),
                                          width: getHorizontalSize(68))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 24, top: 22, right: 24),
                                child: ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(24));
                                    },
                                    itemCount: 4,
                                    itemBuilder: (context, index) {
                                      return Listrectanglefour2ItemWidget(
                                          onTapRowrectanglefour: () {
                                        onTapRowrectanglefour(context);
                                      });
                                    }))
                          ])
                    ]))));
  }

  onTapRowrectanglefour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.hotelDetailsScreen);
  }
}
