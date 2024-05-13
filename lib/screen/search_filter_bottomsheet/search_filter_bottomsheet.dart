import '../search_filter_bottomsheet/widgets/listcountry_item_widget.dart';
import '../search_filter_bottomsheet/widgets/listsizemediumtypef2_item_widget.dart';
import '../search_filter_bottomsheet/widgets/liststar_item_widget.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:HotelAppUser/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SearchFilterBottomsheet extends StatelessWidget {
  bool isCheckbox = false;

  bool isCheckbox1 = false;

  bool isCheckbox2 = false;

  bool isCheckbox3 = false;

  bool isCheckbox4 = false;

  bool isCheckbox5 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(top: 8, bottom: 8),
                decoration: AppDecoration.outlineGray8002
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgFrameGray700,
                          height: getVerticalSize(3),
                          width: getHorizontalSize(38)),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("Filter Hotel",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold24)),
                      Padding(
                          padding: getPadding(left: 24, top: 49, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Country",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold18),
                                Padding(
                                    padding: getPadding(bottom: 2),
                                    child: Text("See All",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRomanBold16Cyan60001
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(56),
                              child: ListView.separated(
                                  padding: getPadding(left: 24, top: 18),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(12));
                                  },
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return ListcountryItemWidget();
                                  }))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 23),
                              child: Text("Sort Results",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold18))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(58),
                              child: ListView.separated(
                                  padding: getPadding(left: 24, top: 20),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(12));
                                  },
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return Listsizemediumtypef2ItemWidget();
                                  }))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 25),
                              child: Text("Price Range Per Night",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold18))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 78, top: 18),
                              child: Row(children: [
                                Container(
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(36),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgMail,
                                              height: getVerticalSize(24),
                                              width: getHorizontalSize(36),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 5, top: 1),
                                                  child: Text("18",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSourceSansProSemiBold14)))
                                        ])),
                                Container(
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(36),
                                    margin: getMargin(left: 83),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgMail,
                                              height: getVerticalSize(24),
                                              width: getHorizontalSize(36),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 5, top: 1),
                                                  child: Text("50",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSourceSansProSemiBold14)))
                                        ]))
                              ]))),
                      Padding(
                          padding: getPadding(left: 24, top: 2, right: 24),
                          child: SliderTheme(
                              data: SliderThemeData(
                                  trackShape: RoundedRectSliderTrackShape(),
                                  activeTrackColor: ColorConstant.cyan600,
                                  inactiveTrackColor: ColorConstant.gray700,
                                  thumbColor: ColorConstant.gray800,
                                  thumbShape: RoundSliderThumbShape()),
                              child: RangeSlider(
                                  values: RangeValues(0, 0),
                                  min: 0.0,
                                  max: 100.0,
                                  onChanged: (value) {}))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 25),
                              child: Text("Star Rating",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold18))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(56),
                              child: ListView.separated(
                                  padding: getPadding(left: 24, top: 18),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(12));
                                  },
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return ListstarItemWidget();
                                  }))),
                      Padding(
                          padding: getPadding(left: 24, top: 23, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Facilities",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold18),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("See All",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRomanBold16Cyan60001
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 20, right: 99),
                              child: Row(children: [
                                CustomCheckbox(
                                    text: "WiFi",
                                    value: isCheckbox,
                                    fontStyle: CheckboxFontStyle
                                        .UrbanistSemiBold14WhiteA700,
                                    onChange: (value) {
                                      isCheckbox = value;
                                    }),
                                CustomCheckbox(
                                    text: "Swimming Pool",
                                    value: isCheckbox1,
                                    margin: getMargin(left: 12),
                                    fontStyle: CheckboxFontStyle
                                        .UrbanistSemiBold14WhiteA700,
                                    onChange: (value) {
                                      isCheckbox1 = value;
                                    }),
                                CustomCheckbox(
                                    text: "Parking",
                                    iconSize: getHorizontalSize(24),
                                    value: isCheckbox2,
                                    margin: getMargin(left: 12),
                                    fontStyle: CheckboxFontStyle
                                        .UrbanistSemiBold14WhiteA700,
                                    onChange: (value) {
                                      isCheckbox2 = value;
                                    })
                              ]))),
                      Padding(
                          padding: getPadding(left: 24, top: 25, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Accommodation Type",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold18),
                                Padding(
                                    padding: getPadding(bottom: 2),
                                    child: Text("See All",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRomanBold16Cyan60001
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 18),
                              child: Row(children: [
                                CustomCheckbox(
                                    text: "Hotels",
                                    value: isCheckbox3,
                                    fontStyle: CheckboxFontStyle
                                        .UrbanistSemiBold14WhiteA700,
                                    onChange: (value) {
                                      isCheckbox3 = value;
                                    }),
                                CustomCheckbox(
                                    text: "Resorts",
                                    iconSize: getHorizontalSize(24),
                                    value: isCheckbox4,
                                    margin: getMargin(left: 12),
                                    fontStyle: CheckboxFontStyle
                                        .UrbanistSemiBold14WhiteA700,
                                    onChange: (value) {
                                      isCheckbox4 = value;
                                    }),
                                CustomCheckbox(
                                    text: "Villas",
                                    value: isCheckbox5,
                                    margin: getMargin(left: 12),
                                    fontStyle: CheckboxFontStyle
                                        .UrbanistSemiBold14WhiteA700,
                                    onChange: (value) {
                                      isCheckbox5 = value;
                                    })
                              ]))),
                      Padding(
                          padding: getPadding(
                              left: 21, top: 48, right: 24, bottom: 40),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(58),
                                    width: getHorizontalSize(184),
                                    text: "Reset",
                                    variant: ButtonVariant.FillGray800),
                                CustomButton(
                                    height: getVerticalSize(58),
                                    width: getHorizontalSize(184),
                                    text: "Apply Filter",
                                    margin: getMargin(left: 12),
                                    variant: ButtonVariant.OutlineGreenA7003f,
                                    onTap: () {
                                      onTapApplyfilter(context);
                                    })
                              ]))
                    ]))));
  }

  onTapApplyfilter(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.filterResultScreen);
  }
}
