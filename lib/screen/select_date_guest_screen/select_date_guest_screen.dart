import 'package:HotelAppUser/controller/SelectDateGuestController.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:get/get.dart';

import '../../core/app_export.dart';
import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

class SelectDateGuestScreen extends StatelessWidget {
  //   DateTime? ranStart;

  // DateTime? ranEnd;
  @override
  Widget build(BuildContext context) {
    SelectDateGuestController controller = Get.put(SelectDateGuestController());

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 10, bottom: 10),
                    onTap: () {
                      onTapArrowleft12();
                    }),
                title: AppbarTitle(
                    text: "lbl_select_date".tr, margin: getMargin(left: 16))),
            body: Container(
              width: double.maxFinite,
              padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Obx(() => Container(
                        width: getHorizontalSize(350),
                        child: TableCalendar(
                            locale: 'en_US',
                            firstDay: DateTime(DateTime.now().year - 5),
                            lastDay: DateTime(DateTime.now().year + 5),
                            calendarFormat: CalendarFormat.month,
                            rangeSelectionMode:
                                controller.rangeSelectionMode.value,
                            startingDayOfWeek: StartingDayOfWeek.monday,
                            headerStyle: HeaderStyle(
                                formatButtonVisible: false,
                                titleCentered: true),
                            calendarStyle: CalendarStyle(
                                outsideDaysVisible: false,
                                isTodayHighlighted: false),
                            focusedDay: controller.focusedDay.value,
                            rangeStartDay: controller.rangeStart,
                            rangeEndDay: controller.rangeEnd,
                            onDaySelected: (selectedDay, focusedDay) {
                              if (!isSameDay(
                                  controller.selectedDay, selectedDay)) {
                                controller.focusedDay.value = focusedDay;
                                controller.selectedDay = selectedDay;
                                controller.rangeEnd = selectedDay;
                                controller.rangeStart = selectedDay;
                                controller.rangeSelectionMode.value =
                                    RangeSelectionMode.toggledOn;
                                controller.getprice();
                              }
                            },
                            onRangeSelected: (start, end, focusedDay) {
                              controller.focusedDay.value = focusedDay;
                              controller.rangeEnd = end;
                              controller.rangeStart = start;
                              controller.rangeSelectionMode.value =
                                  RangeSelectionMode.toggledOn;
                              print(controller.rangeStart);
                              print(controller.rangeEnd);
                              controller.getprice();
                            },
                            onPageChanged: (focusedDay) {
                              controller.focusedDay.value = focusedDay;
                              controller.getprice();
                            }))),
                    GetBuilder<SelectDateGuestController>(
                      builder: (controller) => Padding(
                          padding: getPadding(top: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_check_in".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanBold18),
                                      Container(
                                          margin: getMargin(top: 12),
                                          padding: getPadding(
                                              left: 20,
                                              top: 18,
                                              right: 20,
                                              bottom: 18),
                                          decoration: AppDecoration
                                              .fillBluegray900
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                      top: 1, bottom: 1),
                                                  child: Text(
                                                    "${controller.rangeStart!.day}/${controller.rangeStart?.month}",
                                                    // "${controller.rangeStart!.day}/${controller.rangeStart!.month}/${controller.rangeStart!.year}",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtUrbanistSemiBold14WhiteA700
                                                        .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.2),
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCalendar20x20,
                                                    height: getSize(20),
                                                    width: getSize(20),
                                                    margin: getMargin(left: 59))
                                              ]))
                                    ]),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMenu20x20,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 52, bottom: 18)),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_check_out".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanBold18),
                                      Container(
                                          margin: getMargin(top: 12),
                                          padding: getPadding(
                                              left: 20,
                                              top: 18,
                                              right: 20,
                                              bottom: 18),
                                          decoration: AppDecoration
                                              .fillBluegray900
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 1, bottom: 1),
                                                    child: Text(
                                                        "${controller.rangeEnd!.day}/${controller.rangeEnd?.month}",
                                                        //${controller.rangeEnd?.day}/${controller.rangeEnd?.month}/${controller.rangeEnd?.year}
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistSemiBold14WhiteA700
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.2)))),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCalendar20x20,
                                                    height: getSize(20),
                                                    width: getSize(20),
                                                    margin: getMargin(left: 55))
                                              ]))
                                    ])
                              ])),
                    ),
                    // Padding(
                    //     padding: getPadding(top: 29),
                    //     child: Text("lbl_guest",
                    //         overflow: TextOverflow.ellipsis,
                    //         textAlign: TextAlign.left,
                    //         style: AppStyle.txtUrbanistRomanBold18)),
                    // Container(
                    //     margin: getMargin(top: 16),
                    //     padding: getPadding(
                    //         left: 83, top: 12, right: 83, bottom: 12),
                    //     decoration: AppDecoration.outlineGray800.copyWith(
                    //         borderRadius: BorderRadiusStyle.roundedBorder20),
                    //     child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: [
                    //           Card(
                    //               clipBehavior: Clip.antiAlias,
                    //               elevation: 0,
                    //               margin: EdgeInsets.all(0),
                    //               color: ColorConstant.teal900,
                    //               shape: RoundedRectangleBorder(
                    //                   borderRadius:
                    //                       BorderRadiusStyle.roundedBorder16),
                    //               child: Container(
                    //                   height: getSize(52),
                    //                   width: getSize(52),
                    //                   padding: getPadding(all: 16),
                    //                   decoration: AppDecoration
                    //                       .outlineIndigoA20014
                    //                       .copyWith(
                    //                           borderRadius: BorderRadiusStyle
                    //                               .roundedBorder16),
                    //                   child: Stack(children: [
                    //                     CustomImageView(
                    //                         svgPath: ImageConstant.imgMenu2,
                    //                         height: getSize(20),
                    //                         width: getSize(20),
                    //                         alignment: Alignment.center)
                    //                   ]))),
                    //           Padding(
                    //               padding: getPadding(top: 11, bottom: 11),
                    //               child: Text("lbnnl_3".tr,
                    //                   overflow: TextOverflow.ellipsis,
                    //                   textAlign: TextAlign.left,
                    //                   style: AppStyle.txtUrbanistRomanBold24)),
                    //           Card(
                    //               clipBehavior: Clip.antiAlias,
                    //               elevation: 0,
                    //               margin: EdgeInsets.all(0),
                    //               color: ColorConstant.teal900,
                    //               shape: RoundedRectangleBorder(
                    //                   borderRadius:
                    //                       BorderRadiusStyle.roundedBorder16),
                    //               child: Container(
                    //                   height: getSize(52),
                    //                   width: getSize(52),
                    //                   padding: getPadding(all: 16),
                    //                   decoration: AppDecoration
                    //                       .outlineIndigoA20014
                    //                       .copyWith(
                    //                           borderRadius: BorderRadiusStyle
                    //                               .roundedBorder16),
                    //                   child: Stack(children: [
                    //                     CustomImageView(
                    //                         svgPath: ImageConstant.imgPlus,
                    //                         height: getSize(20),
                    //                         width: getSize(20),
                    //                         alignment: Alignment.center)
                    //                   ])))
                    //         ])),
                    GetBuilder<SelectDateGuestController>(
                        builder: (controller) => Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(top: 50),
                                child: Text("total ${controller.price}",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20))))
                  ]),
            ),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(55),
                text: "lbl_continue".tr,
                margin: getMargin(left: 24, right: 24, bottom: 32),
                variant: ButtonVariant.OutlineGreenA7003f,
                onTap: () {
                  controller.gotobooking();
                })));
  }

  onTapContinue() {}

  onTapArrowleft12() {
    Get.back();
  }
}
