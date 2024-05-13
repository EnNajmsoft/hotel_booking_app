import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/core/functions/alertelogoteadmin.dart';
import 'package:HotelAppUser/core/functions/alertexitapp.dart';
import 'package:HotelAppUser/core/functions/translatefatabase.dart';
import 'package:HotelAppUser/screen/admin_screens/hotel_screens/logoutboutomsheet.dart';
import 'package:HotelAppUser/screen/logout_bottomsheet/logout_bottomsheet.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/admin/hotels/hotel_admin_controller.dart';
import '../../../linkapi.dart';
import '../../../widgets/custom_switch.dart';

// ignore: must_be_immutable
class HotelScreenAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  HotelAdminControllerImp controller = Get.put(HotelAdminControllerImp());

    return Scaffold(
        

        appBar: AppBar(
          title: Center(child: Text("hotels")),
        backgroundColor: ColorConstant.gray900,
        
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.offNamed(AppRoutes.addHotel);
          },
          child: Icon(Icons.add),
        ),
        body: 
        
        Container(
          child: GetBuilder<HotelAdminControllerImp>(
            builder: (controller) => WillPopScope(onWillPop: alertExitApp,
        
             child:
              Container(
                child: Padding(
                  padding: getPadding(top: 22, right: 14, left: 14),
                  child: ListView.builder(
                      itemCount: controller.hotels.length,
                      itemBuilder: (context, index) {
                        return Container(
                            child: Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Card(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            flex: 3,
                                            child: Image.network(
                                              "${AppLink.linkImageHotelRoot}/${controller.hotels[index].hotelImagMain}",
                                              width: 90,
                                              height: 100,
                                              fit: BoxFit.fill,
                                            )),
                                        Expanded(
                                            flex: 8,
                                            child: ListTile(
                                              onTap: () {
                                                controller.gotorooms(
                                                    controller.hotels[index]);
                                              },
                                              title: Text(translateDatabase(controller
                                                      .hotels[index]
                                                      .hotelNameAr ,
                                                      controller.hotels[index]
                                                          .hotelNameEn),
                                         ),
                                              subtitle: Text(
                                                  "${controller.hotels[index].hotelDescribAr}  "),
                                              trailing: Expanded(
                                                flex: 2,
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    IconButton(
                                                      icon: Icon(Icons.delete),
                                                      onPressed: () {
                                                        Get.defaultDialog(
                                                          title: "تحذير",
                                                          middleText:
                                                              "هل انت متاكد من عملية الحذف ؟",
                                                          onCancel: () {
                                                            Get.back();
                                                          },
                                                          onConfirm: () {
                                                            controller.imagename =
                                                                controller
                                                                    .hotels[index]
                                                                    .hotelImagMain!;
                                                            controller.id =
                                                                controller
                                                                    .hotels[index]
                                                                    .hotelId!;
                                                            controller.delethotel();
                                                            Get.back();
                                                          },
                                                        );
                                                      },
                                                    ),
                                                    IconButton(
                                                      icon: Icon(Icons.edit),
                                                      onPressed: () {
                                                        controller.goToEditHotel(
                                                            controller
                                                                .hotels[index]);
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                     Padding(
                                      padding: getPadding(
                                        top: 19,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: CustomButton(
                                              height: getVerticalSize(
                                                38,
                                              ),
                                              text: " الطلبات",
                                              margin: getMargin(
                                                right: 6,
                                              ),
                                              variant: ButtonVariant
                                                  .OutlineCyan60001,
                                              shape: ButtonShape.CircleBorder19,
                                              padding:
                                                  ButtonPadding.PaddingAll8,
                                              fontStyle: ButtonFontStyle
                                                  .UrbanistSemiBold16Cyan60001_1,
                                              onTap: () {
                                                controller.gotoOrders(
                                                    controller.hotels[index]);
                                              },
                                            ),
                                          ),
                                          Expanded(
                                            child: CustomButton(
                                              height: getVerticalSize(
                                                38,
                                              ),
                                              text: " عنوان",
                                              margin: getMargin(
                                                right: 6,
                                              ),
                                              variant: ButtonVariant
                                                  .OutlineCyan60001,
                                              shape: ButtonShape.CircleBorder19,
                                              padding:
                                                  ButtonPadding.PaddingAll8,
                                              fontStyle: ButtonFontStyle
                                                  .UrbanistSemiBold16Cyan60001_1,
                                              onTap: () {
                                                controller.goToaddressHotel(
                                                    controller.hotels[index]);
                                              },
                                            ),
                                          ),
                                          Expanded(
                                            child: CustomButton(
                                              height: getVerticalSize(
                                                38,
                                              ),
                                              text: " الصور",
                                              margin: getMargin(
                                                right: 6,
                                              ),
                                              variant: ButtonVariant
                                                  .OutlineCyan60001,
                                              shape: ButtonShape.CircleBorder19,
                                              padding:
                                                  ButtonPadding.PaddingAll8,
                                              fontStyle: ButtonFontStyle
                                                  .UrbanistSemiBold16Cyan60001_1,
                                              onTap: () {
                                                   controller.goToimagesHotel(
                                                    controller.hotels[index]);
                                              },
                                            ),
                                          ),
                                         
                                        ],
                                      ),
                                    ),
                                  
                                  ],
                                ),
                              ),
                            ),
                           
                          ],
                        ));
                      }),
                ),
              ),
            ),
        ),
        ));
  }

}
