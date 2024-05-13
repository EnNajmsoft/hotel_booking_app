import '../notifications_screen/widgets/sectionlisttoday_item_widget.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

// ignore_for_file: must_be_immutable
class NotificationsScreen extends StatelessWidget {
  List sectionlisttodayItemList = [
    {'id': 1, 'groupBy': "Today"},
    {'id': 2, 'groupBy': "Today"},
    {'id': 3, 'groupBy': "Yesterday"},
    {'id': 4, 'groupBy': "Yesterday"}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 11, bottom: 11),
                    onTap: () {
                      onTapArrowleft6(context);
                    }),
                title: AppbarTitle(
                    text: "Notifications", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgClock,
                      margin:
                          getMargin(left: 24, top: 11, right: 24, bottom: 11))
                ]),
            body: Padding(
                padding: getPadding(top: 31, bottom: 5),
                child: GroupedListView<dynamic, String>(
                    shrinkWrap: true,
                    useStickyGroupSeparators: true,
                    stickyHeaderBackgroundColor: Colors.transparent,
                    elements: sectionlisttodayItemList,
                    groupBy: (element) => element['groupBy'],
                    groupSeparatorBuilder: (String value) {
                      return Padding(
                          padding: getPadding(right: 327),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(value,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold18
                                        .copyWith(
                                            color: ColorConstant.whiteA700))
                              ]));
                    },
                    itemBuilder: (context, model) {
                      return SectionlisttodayItemWidget();
                    }))));
  }

  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}
