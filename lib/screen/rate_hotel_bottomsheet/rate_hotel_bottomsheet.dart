import 'package:HotelAppUser/controller/ratingcontroller.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/core/functions/translatefatabase.dart';
import 'package:HotelAppUser/core/functions/validinput.dart';
import 'package:HotelAppUser/data/model/order_model.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:HotelAppUser/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

// ignore_for_file: must_be_immutable
class RateHotelBottomsheet extends StatelessWidget {
  final OrderModel? order;

  const RateHotelBottomsheet({required this.order});
  @override
  Widget build(BuildContext context) {
    RatinControllerImp controller = Get.put(RatinControllerImp());

    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 8,
            right: 24,
            bottom: 8,
          ),
          decoration: AppDecoration.outlineGray8002.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL40,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgFrameGray700,
                height: getVerticalSize(
                  3,
                ),
                width: getHorizontalSize(
                  38,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child: Text(
                  "Rate the Hotel",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold24,
                ),
              ),
              Container(
                margin: getMargin(
                  top: 30,
                ),
                padding: getPadding(
                  all: 20,
                ),
                decoration: AppDecoration.outlineBlack9000c.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle4100x1004,
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
                        top: 10,
                        bottom: 9,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            translateDatabase(
                                order!.hotelNameAr, order!.hotelNameEn),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 9,
                            ),
                            child: Text(
                              " ${order!.addressCity}, ${order!.addressStreet}",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtUrbanistRegular14Gray300.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.2,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 12,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgStar12x12,
                                  height: getSize(
                                    12,
                                  ),
                                  width: getSize(
                                    12,
                                  ),
                                  margin: getMargin(
                                    top: 2,
                                    bottom: 2,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 4,
                                  ),
                                  child: Text(
                                    "4.8",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtUrbanistSemiBold14.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "(4,378 reviews)",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtUrbanistRegular12.copyWith(
                                      letterSpacing: getHorizontalSize(
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
                    Spacer(),
                    Padding(
                      padding: getPadding(
                        top: 6,
                        bottom: 6,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "27",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold24Cyan60001,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: Text(
                              "/ night",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRegular10.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.2,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgBookmark24x24,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              top: 17,
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
                  top: 26,
                ),
                child: Text(
                  "Please give your rating & review",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold20,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 25,
                ),
                child: RatingBar.builder(
                  initialRating: 4,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemSize: getVerticalSize(
                    25,
                  ),
                  itemCount: 5,
                  updateOnDrag: true,
                  onRatingUpdate: (rating) {
                    controller.hotelId = order!.hotelId;
                    controller.orderId = order!.orderId;
                    controller.rate = rating.toString();
                    print('****${controller.hotelId}****${controller.orderId}****${controller.rate}');
                  },
                  itemBuilder: (context, _) {
                    return Icon(
                      Icons.star,
                      color: ColorConstant.yellowA700,
                    );
                  },
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  width: getHorizontalSize(
                    380,
                  ),
                  margin: getMargin(
                    top: 27,
                  ),
                  padding: getPadding(
                    left: 20,
                    top: 18,
                    right: 20,
                    bottom: 18,
                  ),
                  decoration: AppDecoration.fillBluegray900.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Form(
                        key: controller.formstaterate,
                        child: Container(
                          width: getHorizontalSize(
                            325,
                          ),
                          margin: getMargin(
                            top: 2,
                            right: 14,
                          ),
                          child: CustomTextFormField(
                            validator: (value) {
                              return validInput(value!, 5, 30, '');
                            },
                            focusNode: FocusNode(),
                            controller: controller.comment,
                            hintText:
                                "comment like : The rooms are very comfortable and the...",
                            margin: getMargin(top: 5),
                            padding: TextFormFieldPadding.PaddingT21,
                            fontStyle:
                                TextFormFieldFontStyle.UrbanistRegular14Gray500,
                            textInputType: TextInputType.emailAddress,
                            prefix: Container(
                              margin: getMargin(
                                  left: 20, top: 20, right: 12, bottom: 20),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCheckmark),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(60),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  55,
                ),
                text: "Rate now",
                margin: getMargin(
                  top: 24,
                ),
                onTap: () {
                  controller.addrating();
                },
              ),
              CustomButton(
                height: getVerticalSize(
                  55,
                ),
                text: "Later",
                margin: getMargin(
                  top: 12,
                  bottom: 58,
                ),
                variant: ButtonVariant.FillGray800,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
