import '../filter_result_screen/widgets/listrectanglefour3_item_widget.dart';
import '../filter_result_screen/widgets/listsizemediumtypef3_item_widget.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FilterResultScreen extends StatelessWidget {
  TextEditingController searchbarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: searchbarController,
                          hintText: "Hotel",
                          margin: getMargin(left: 24, top: 24, right: 24),
                          fontStyle:
                              SearchViewFontStyle.UrbanistSemiBold14WhiteA700,
                          prefix: Container(
                              margin: getMargin(
                                  left: 20, top: 18, right: 12, bottom: 18),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 18, right: 20, bottom: 18),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCalculator)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
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
                                    return Listsizemediumtypef3ItemWidget();
                                  }))),
                      Container(
                          height: getVerticalSize(716),
                          width: double.maxFinite,
                          margin: getMargin(top: 24),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 24, right: 24),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 2, bottom: 3),
                                                        child: Text(
                                                            "Recommended (586,379)",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanBold18)),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgMenu28x68,
                                                        height:
                                                            getVerticalSize(28),
                                                        width:
                                                            getHorizontalSize(
                                                                68))
                                                  ]),
                                              Padding(
                                                  padding: getPadding(top: 22),
                                                  child: ListView.separated(
                                                      physics:
                                                          NeverScrollableScrollPhysics(),
                                                      shrinkWrap: true,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    24));
                                                      },
                                                      itemCount: 4,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Listrectanglefour3ItemWidget(
                                                            onTapRowrectanglefour:
                                                                () {
                                                          onTapRowrectanglefour(
                                                              context);
                                                        });
                                                      }))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: getVerticalSize(90),
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray900D8,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                    getHorizontalSize(16)),
                                                topRight: Radius.circular(
                                                    getHorizontalSize(16))))))
                              ]))
                    ]))));
  }

  onTapRowrectanglefour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.hotelDetailsScreen);
  }
}
