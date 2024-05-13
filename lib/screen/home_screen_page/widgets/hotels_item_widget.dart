import 'package:HotelAppUser/controller/Home_controller.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/core/functions/translatefatabase.dart';
import 'package:HotelAppUser/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HotelsItemWidget extends GetView<HomeControllerImp> {

  final int index;
 final bool active;
  HotelsItemWidget({required this.index, required this.active});

  @override
  Widget build(BuildContext context) {
    return
     IntrinsicWidth(
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: getVerticalSize(
              400,
            ),
            width: getHorizontalSize(
              300,
            ),
            margin: getMargin(
              right: 24,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                                url:'${AppLink.linkImageHotelRoot}/${controller.hotels[index].hotelImagMain}' ,
                 fit: BoxFit.fill,
                  // imagePath: ImageConstant.imgRectangle3400x3001,
                  height: getVerticalSize(
                    400,
                  ),
                  width: getHorizontalSize(
                    300,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      36,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: getMargin(
                          right: 23,
                        ),
                        padding: getPadding(
                          left: 16,
                          top: 7,
                          right: 16,
                          bottom: 7,
                        ),
                        decoration: AppDecoration.fillCyan60001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgStar,
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
                                left: 8,
                              ),
                              child: Text(
                                "",
                                // ${controller.hotels[index].hotelRiat!.substring(0, 3)}
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistSemiBold14WhiteA700
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
                      Container(
                        margin: getMargin(
                          top: 172,
                        ),
                        padding: getPadding(
                          left: 32,
                          top: 33,
                          right: 32,
                          bottom: 13,
                        ),
                        decoration:
                            AppDecoration.gradientGray80000Gray90096.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderBL36,
                        ),
                        child: InkWell(
                          onTap: (){
                          
                                  int i=index;
                            controller.gotorooms(controller.hotels[i]);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 19,
                                ),
                                child: Text(
                                translateDatabase(
                                    controller.hotels[index].hotelNameAr,
                                    controller.hotels[index].hotelNameEn),
                            
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold24,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Text(
                                  " ${controller.hotels[index].addressCity}, ${controller.hotels[index].addressStreet}",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRegular16WhiteA700
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.2,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                       
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanBold24,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 4,
                                        top: 9,
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRegular14WhiteA700
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.2,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    InkWell(
                                      onTap: (){
                        
                                      },
                                      child: Container(
                                        width: 3,
                                        // child: CustomImageView(
                                        //   svgPath:active ?ImageConstant.imgBookmark24x24 : ImageConstant.imgBookmark,
                                        //   height: getSize(
                                        //     28,
                                        //   ),
                                        //   width: getSize(
                                        //     28,
                                        //   ),
                                        // ),
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
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  }
}
