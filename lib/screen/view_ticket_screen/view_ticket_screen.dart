import '../view_ticket_screen/widgets/view_ticket_item_widget.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class ViewTicketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      onTapArrowleft18(context);
                    }),
                title:
                    AppbarTitle(text: "Ticket", margin: getMargin(left: 16))),
            body: Container(
                width: getHorizontalSize(380),
                margin: getMargin(left: 24, top: 56, right: 24),
                padding: getPadding(left: 22, top: 33, right: 22, bottom: 33),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: fs.Svg(ImageConstant.imgGroupBlueGray900),
                        fit: BoxFit.cover)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Royale President Hotel",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20),
                      Container(
                          height: getSize(256),
                          width: getSize(256),
                          margin: getMargin(top: 11),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.fillBluegray900,
                          child: Stack(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgVectorWhiteA700,
                                height: getSize(224),
                                width: getSize(224),
                                alignment: Alignment.center)
                          ])),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Divider(
                              height: getVerticalSize(2),
                              thickness: getVerticalSize(2),
                              color: ColorConstant.gray800)),
                      Padding(
                          padding: getPadding(
                              left: 17, top: 53, right: 6, bottom: 2),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(30));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return ViewTicketItemWidget();
                              }))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(55),
                text: "Download Ticket",
                margin: getMargin(left: 24, right: 24, bottom: 48),
                variant: ButtonVariant.OutlineGreenA7003f)));
  }

  onTapArrowleft18(BuildContext context) {
    Navigator.pop(context);
  }
}
