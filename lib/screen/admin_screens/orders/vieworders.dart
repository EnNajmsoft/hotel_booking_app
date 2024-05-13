import 'package:HotelAppUser/controller/admin/orders/view.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/admin/hotels/hotel_admin_controller.dart';
import '../../../linkapi.dart';
import '../../../widgets/custom_switch.dart';

// ignore: must_be_immutable
class OrderScreenAdmin extends StatelessWidget {
  OrderAdminControllerImp controller = Get.put(OrderAdminControllerImp());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("orders")),
          backgroundColor: ColorConstant.gray900,
        ),
        body: GetBuilder<OrderAdminControllerImp>(
          builder: (controller) => Container(
            child: Padding(
              padding: getPadding(top: 22, right: 14, left: 14),
              child: ListView.builder(
                  itemCount: controller.ordermodel.length,
                  itemBuilder: (context, index) {
                   return Container(
                      width: double.maxFinite,
                      child: Container(
                        margin: getMargin(top: 10),
                        padding: getPadding(
                          all: 20,
                        ),
                        decoration: AppDecoration.outlineBlack9000c.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                             Row(
                            
                              children: [
                                 Container(
                                  margin: getMargin(left: 10,right: 10 ),
                                   child: Text(
                                    "تاريخ الطلب",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRegular14Gray300
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.2,
                                      ),
                                    ),
                                                                 ),
                                 ),
                                Expanded(
                                  child: Text(
                                    "${controller.ordermodel[index].orderCreatDate!.substring(0, 11)}",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold20,
                                  ),
                                ),
                              ],
                             ),
                            Padding(
                              padding: getPadding(
                                right: 25,
                                top: 5
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CustomImageView(
                                    fit: BoxFit.fill,
                                    url:
                                        "${AppLink.linkImageHotelRoot}/${controller.ordermodel[index].hotelImagMain}",
                                    height: getSize(
                                      110,
                                    ),
                                    width: getSize(
                                      90,
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
                                          "${controller.ordermodel[index].hotelNameAr}",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanBold20,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 9,
                                          ),
                                          child: Text(
                                            "${controller.ordermodel[index].roomName}",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRegular14Gray300
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
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
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "${controller.ordermodel[index].orderCmrName}",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanBold20,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 9,
                                          ),
                                          child: Text(
                                            "${controller.ordermodel[index].orderCmrPhone}",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRegular14Gray300
                                                .copyWith(
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
                            // CustomButton(
                            //   height: getVerticalSize(
                            //     24,
                            //   ),
                            //   width: getHorizontalSize(
                            //     60,
                            //   ),
                            //   text: "Paid",
                            //   margin: getMargin(
                            //     top: 11,
                            //   ),
                            //   variant: ButtonVariant.FillGreenA7001e,
                            //   shape: ButtonShape.RoundedBorder6,
                            //   padding: ButtonPadding.PaddingAll6,
                            //   fontStyle: ButtonFontStyle.UrbanistSemiBold10,
                            // ),
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

                            Padding(
                              padding: getPadding(
                                top: 19,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      " السعر",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRegular14Gray300
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "تاريخ بديه الحجز ",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRegular14Gray300
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "تاريخ انتهاء الحجز",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtUrbanistRegular14Gray300
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 19,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                 
                              Expanded(
                                    child: Text(
                                      "${controller.ordermodel[index].orderPrice}",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanBold20,
                                    ),
                                  ),
                              Expanded(
                                    child: Text(
                                      "${controller.ordermodel[index].orderStartDate}",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanBold20,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "${controller.ordermodel[index].orderEndDate}",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanBold20,
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
                            
                            Padding(
                              padding: getPadding(
                                top: 19,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: CustomButton(
                                      height: getVerticalSize(
                                        38,
                                      ),
                                      text: " Booking",
                                      margin: getMargin(
                                        right: 6,
                                      ),
                                      variant: ButtonVariant.OutlineCyan60001,
                                      shape: ButtonShape.CircleBorder19,
                                      padding: ButtonPadding.PaddingAll8,
                                      fontStyle: ButtonFontStyle
                                          .UrbanistSemiBold16Cyan60001_1,
                                      onTap: () {},
                                    ),
                                  ),
                                  Expanded(
                                    child: CustomButton(
                                      height: getVerticalSize(
                                        38,
                                      ),
                                      text: "View Ticket",
                                      margin: getMargin(
                                        left: 6,
                                      ),
                                      shape: ButtonShape.CircleBorder19,
                                      padding: ButtonPadding.PaddingAll8,
                                      fontStyle: ButtonFontStyle
                                          .UrbanistSemiBold16WhiteA700,
                                      onTap: () {
                                        // onTapViewticket(context);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                    // return Container(
                    //     child: Column(
                    //   children: [
                    //     InkWell(
                    //       onTap: () {},
                    //       child: Card(
                    //         child: Column(
                    //           mainAxisSize: MainAxisSize.min,
                    //           children: [
                    //             Row(
                    //               mainAxisAlignment: MainAxisAlignment.start,
                    //               children: [
                    //                 Expanded(
                    //                     flex: 3,
                    //                     child: Image.network(
                    //                       "${AppLink.linkImageHotelRoot}/${controller.ordermodel[index].hotelImagMain}",
                    //                       width: 90,
                    //                       height: 100,
                    //                       fit: BoxFit.fill,
                    //                     )),
                    //                 Expanded(
                    //                     flex: 8,
                    //                     child: ListTile(
                    //                       onTap: () {
                    //                         // controller.gotorooms(
                    //                         //     controller.hotels[index]);
                    //                       },
                    //                       title: Text(
                    //                           "${controller.ordermodel[index].orderCmrName}"),
                    //                       subtitle: Text(
                    //                           "${controller.ordermodel[index].hotelNameEn}"),
                    //                       trailing: Expanded(
                    //                         flex: 2,
                    //                         child: Row(
                    //                           mainAxisSize: MainAxisSize.min,
                    //                           children: [
                    //                             IconButton(
                    //                               icon: Icon(Icons.delete),
                    //                               onPressed: () {
                    //                                 Get.defaultDialog(
                    //                                   title: "تحذير",
                    //                                   middleText:
                    //                                       "هل انت متاكد من عملية الحذف ؟",
                    //                                   onCancel: () {
                    //                                     Get.back();
                    //                                   },
                    //                                   onConfirm: () {
                    //                                     // controller.imagename =
                    //                                     //     controller
                    //                                     //         .ordermodel[index]
                    //                                     //         .hotelImagMain!;
                    //                                     // controller.id =
                    //                                     //     controller
                    //                                     //         .ordermodel[index]
                    //                                     //         .hotelId!;
                    //                                     // controller.delethotel();
                    //                                     // Get.back();
                    //                                   },
                    //                                 );
                    //                               },
                    //                             ),
                    //                             IconButton(
                    //                               icon: Icon(Icons.edit),
                    //                               onPressed: () {
                    //                                 // controller.goToEditHotel(
                    //                                 //     controller
                    //                                 //         .hotels[index]);
                    //                               },
                    //                             ),
                    //                           ],
                    //                         ),
                    //                       ),
                    //                     )),
                    //               ],
                    //             ),

                    //             Row(
                    //               mainAxisAlignment: MainAxisAlignment.start,
                    //               children: [
                    //                 Expanded(
                    //                   child: CustomButton(
                    //                       height: getVerticalSize(58),
                    //                       text: "عرض الصور الاخرى",
                    //                       // margin: getMargin(left: 6),
                    //                       variant:
                    //                           ButtonVariant.OutlineGreenA7003f,
                    //                       onTap: () {
                    //                             //  controller.goToimagesHotel(controller.hotels[index]);
                    //                       }),
                    //                 ),
                    //                        Expanded(
                    //                   child: CustomButton(
                    //                       height: getVerticalSize(58),
                    //                       text: "  اضافه عنوان",
                    //                       // margin: getMargin(left: 6),
                    //                       variant:
                    //                           ButtonVariant.OutlineGreenA7003f,
                    //                       onTap: () {
                    //                         // controller.goToaddressHotel(
                    //                         //     controller.hotels[index]);
                    //                       }),
                    //                 ),
                    //                 Expanded(
                    //                   child: CustomButton(
                    //                       height: getVerticalSize(58),
                    //                       text: "الطلبات",
                    //                       // margin: getMargin(left: 6),
                    //                       variant:
                    //                           ButtonVariant.OutlineGreenA7003f,
                    //                       onTap:() {

                    //                       },),
                    //                 ),
                    //                 Expanded(
                    //                   child: CustomSwitch(
                    //                       value: controller.isActive,
                    //                       onChanged: (value) {
                    //                         controller.hotelid = controller
                    //                             .ordermodel[index].hotelId!;
                    //                         print(value);
                    //                         controller.activeChane(value);
                    //                       }),
                    //                 ),
                    //               ],
                    //             )
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //     // CardHotels(
                    //     //     hotelmodel: controller.hotels[index],
                    //     //     onEdit: () {
                    //     //       controller
                    //     //           .goToEditHotel(controller.hotels[index]);
                    //     //     },
                    //     //     onDelete: () {
                    //     //       Get.defaultDialog(
                    //     //         title: "تحذير",
                    //     //         middleText: "هل انت متاكد من عملية الحذف ؟",
                    //     //         onCancel: () {
                    //     //           Get.back();
                    //     //         },
                    //     //         onConfirm: () {
                    //     //           controller.imagename =
                    //     //               controller.hotels[index].hotelImagMain!;
                    //     //           controller.id =
                    //     //               controller.hotels[index].hotelId!;
                    //     //           controller.delethotel();
                    //     //           Get.back();
                    //     //         },
                    //     //       );
                    //     //     },
                    //     //     ontap: () {
                    //     //       controller.gotorooms(controller.hotels[index]);
                    //     //     },

                    //     //  controller: controller,
                    //     //  c
                    //     // ),
                    //   ],
                    // ));
                  }),
            ),
          ),
        ));
  }
}
