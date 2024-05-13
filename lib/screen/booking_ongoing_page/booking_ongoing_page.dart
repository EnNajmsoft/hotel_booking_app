import 'package:get/get.dart';

import '../../controller/order/view_order_controller.dart';
import '../booking_ongoing_page/widgets/listrectangle_item_widget.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:HotelAppUser/screen/cancel_booking_bottomsheet/cancel_booking_bottomsheet.dart';

class BookingOngoingPage extends StatelessWidget {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    OrderViewControllerImp controller = Get.put(OrderViewControllerImp());

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GetBuilder<OrderViewControllerImp>(builder: (controller) =>  Container(
            width: double.maxFinite,
            child: Padding(
                padding: getPadding(left: 24, top: 30, right: 24),
                child: Container(
                  child: ListView.separated(
                      // physics: NeverScrollableScrollPhysics(),
                      // shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: getVerticalSize(20));
                      },
                      itemCount: controller.orderlist.length,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListrectangleItemWidget(
                                order: controller.orderlist[index],
                                onTapCancelbooking: () {
                                  onTapCancelbooking(controller.orderlist[index].orderId);
                                },
                                onTapViewticket: () {
                                  // onTapViewticket(context);
                                }),
                          ],
                        );
                      }),
                ),),),
      ),)
    );
  }
  onTapCancelbooking( orderid) {
    Get.bottomSheet(
      CancelBookingBottomsheet(orderid),
      isScrollControlled: true,
    );
  }

  onTapViewticket() {
    Get.toNamed(
      AppRoutes.viewTicketScreen,
    );
  }
}
