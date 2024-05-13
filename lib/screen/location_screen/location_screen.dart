import 'dart:async';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore_for_file: must_be_immutable
class LocationScreen extends StatelessWidget {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: size.height,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Container(
                                height: size.height,
                                width: double.maxFinite,
                                child: GoogleMap(
                                    mapType: MapType.normal,
                                    initialCameraPosition: CameraPosition(
                                        target: LatLng(37.43296265331129,
                                            -122.08832357078792),
                                        zoom: 14.4746),
                                    onMapCreated:
                                        (GoogleMapController controller) {
                                      googleMapController.complete(controller);
                                    },
                                    zoomControlsEnabled: false,
                                    zoomGesturesEnabled: false,
                                    myLocationButtonEnabled: false,
                                    myLocationEnabled: false)),
                            CustomImageView(
                                svgPath: ImageConstant.imgLocation,
                                height: getVerticalSize(50),
                                width: getHorizontalSize(42),
                                alignment: Alignment.topCenter,
                                margin: getMargin(top: 394)),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    padding: getPadding(top: 9, bottom: 9),
                                    decoration: AppDecoration
                                        .gradientGray80000Gray90002,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(94),
                                              leadingWidth: 52,
                                              leading: AppbarImage(
                                                  height: getSize(28),
                                                  width: getSize(28),
                                                  svgPath: ImageConstant
                                                      .imgArrowdownWhiteA700,
                                                  margin: getMargin(left: 24),
                                                  onTap: () {
                                                    onTapArrowleft10(context);
                                                  }),
                                              title: AppbarTitle(
                                                  text: "Hotel Location",
                                                  margin: getMargin(left: 16)))
                                        ])))
                          ]))
                    ]))));
  }

  onTapArrowleft10(BuildContext context) {
    Navigator.pop(context);
  }
}
