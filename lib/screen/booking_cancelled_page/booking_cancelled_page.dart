import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/screen/rate_hotel_bottomsheet/rate_hotel_bottomsheet.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:HotelAppUser/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/order/view_order_controller.dart';
import '../../linkapi.dart';

// ignore_for_file: must_be_immutable
class BookingCancelledPage extends StatelessWidget {
  TextEditingController statuserrorcompController = TextEditingController();

  TextEditingController statuserrorcompOneController = TextEditingController();

  @override

  @override
  Widget build(BuildContext context) {
    OrderViewControllerImp controller = Get.put(OrderViewControllerImp());

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GetBuilder<OrderViewControllerImp>(builder: (controller) => 
         Container(
            width: double.maxFinite,
            child: Padding(
              padding: getPadding(left: 24, top: 30, right: 24),
              child: Container(
                child: ListView.separated(
                
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(20));
                    },
                    itemCount: controller.ordercanellist.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                                      Container(
                            width: double.maxFinite,
                            child: Container(
                              padding: getPadding(
                                all: 20,
                              ),
                              decoration:
                                  AppDecoration.outlineBlack9000c.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder16,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      right: 99,
                                    ),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                        
                                          fit: BoxFit.fill,
                                          url:
                                              "${AppLink.linkImageHotelRoot}/${controller.ordercanellist[index].hotelImagMain}",
                                          height: getSize(
                                            100,
                                          ),
                                          width: getSize(
                                            100,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              16,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 16,
                                            top: 8,
                                            bottom: 6,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${controller.ordercanellist[index].hotelNameAr}",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold20,
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 9,
                                                ),
                                                child: Text(
                                                  "${controller.ordercanellist[index].roomNamear}",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRegular14Gray300
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.2,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                        
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 20,
                                    ),
                                    child: Divider(
                                      height: getVerticalSize(
                                        1,
                                      ),
                                      thickness: getVerticalSize(
                                        1,
                                      ),
                                      color: ColorConstant.blueGray700,
                                    ),
                                  ),
                                        CustomButton(
                                    height: getVerticalSize(
                                      
                                      24,
                                    ),
                                    width: getHorizontalSize(
                                      60,
                                    ),
                                    text: "13".tr,
                                    margin: getMargin(
                                      top: 10,
                                    ),
                                    variant: ButtonVariant.FillRedA2001e,
                                    shape: ButtonShape.RoundedBorder6,
                                    padding: ButtonPadding.PaddingAll6,
                                    fontStyle: ButtonFontStyle
                                        .UrbanistSemiBold10RedA200,
                                        onTap: () {
                                           Get.bottomSheet(
                                       RateHotelBottomsheet(order : controller.ordercanellist[index] ),
                                        isScrollControlled: true,
                                      );
                                          
                                        },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // ListrectangleItemWidget(
                          //     order: controller.ordercanellist[index],
                          //     onTapCancelbooking: () {
                          //     },
                          //     onTapViewticket: () {
                          //       // onTapViewticket(context);
                          //     }),
                        ],
                      );
                    }),
              ),
            ),
          ),
        ),
      ),
    );

    
  }
}
