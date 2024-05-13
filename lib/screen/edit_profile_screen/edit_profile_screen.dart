import 'package:HotelAppUser/controller/EditProfilecontroller.dart';
import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_image.dart';
import 'package:HotelAppUser/widgets/app_bar/appbar_title.dart';
import 'package:HotelAppUser/widgets/app_bar/custom_app_bar.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:HotelAppUser/widgets/custom_drop_down.dart';
import 'package:HotelAppUser/widgets/custom_phone_number.dart';
import 'package:HotelAppUser/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/functions/validinput.dart';
import '../../core/services/services.dart';
import '../../linkapi.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    EditProfilecontrollerImp controller = Get.put(EditProfilecontrollerImp());

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
              height: getVerticalSize(48),
              leadingWidth: 52,
              leading: AppbarImage(
                  height: getSize(28),
                  width: getSize(28),
                  svgPath: ImageConstant.imgArrowleft,
                  margin: getMargin(left: 24, top: 10, bottom: 10),
                  onTap: () {
                    Get.toNamed(AppRoutes.profileSettingsPage);
                  }),
              title: AppbarTitle(
                text: "Edit Profile",
                margin: getMargin(left: 16),
              ),
            ),
            body: GetBuilder<EditProfilecontrollerImp>(
                builder: (controller) => ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 24, top: 47, right: 24, bottom: 47),
                          child: Form(
                            key: controller.formstateedit,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: getSize(120),
                                      width: getSize(120),
                                      child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            CustomImageView(
                                                url:
                                                    '${AppLink.linkImageUserRoot}/${myServices.sharedPreferences.getString("image")!}',
                                                height: getSize(120),
                                                width: getSize(120),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(60)),
                                                alignment: Alignment.center),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgEdit,
                                                height: getSize(30),
                                                width: getSize(30),
                                                onTap: () {
                                                  {
                                                    showModalBottomSheet(
                                                        context: context,
                                                        builder: (context) =>
                                                            Container(
                                                                height: 120,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              8.0),
                                                                      child: Text(
                                                                          "Please Choose Image",
                                                                          style:
                                                                              TextStyle(fontSize: 22)),
                                                                    ),
                                                                    InkWell(
                                                                      onTap:
                                                                          () {
                                                                        controller
                                                                            .choosefile();
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        width: double
                                                                            .infinity,
                                                                        padding:
                                                                            EdgeInsets.all(10),
                                                                        child:
                                                                            Text(
                                                                          "From Gallery",
                                                                          style:
                                                                              TextStyle(fontSize: 16),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    InkWell(
                                                                      onTap:
                                                                          () {
                                                                        controller
                                                                            .cooseimae();
                                                                      },
                                                                      // onTap: () async {
                                                                      //   XFile? xfile = await ImagePicker()
                                                                      //       .pickImage(source: ImageSource.camera);
                                                                      //   Navigator.of(context).pop();

                                                                      //   controller.myfile = File(xfile!.path);
                                                                      // },

                                                                      child:
                                                                          Container(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        width: double
                                                                            .infinity,
                                                                        padding:
                                                                            EdgeInsets.all(10),
                                                                        child:
                                                                            Text(
                                                                          "From Camera",
                                                                          style:
                                                                              TextStyle(fontSize: 16),
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                )));
                                                  }
                                                },
                                                alignment:
                                                    Alignment.bottomRight)
                                          ]),
                                    ),
                                  ),
                                  CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: controller.username,
                                    hintText:
                                        // "${controller.user!.userName}",
                                        "${myServices.sharedPreferences.getString("username")}",
                                    validator: (val) {
                                      return validInput(val!, 5, 100, "");
                                    },
                                  ),
                                  CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: controller.userlastname,
                                      hintText:
                                          // "${controller.user!.userLastName}",
                                          "${myServices.sharedPreferences.getString("userlastname")}",
                                      validator: (val) {
                                        return validInput(val!, 5, 100, "");
                                      },
                                      margin: getMargin(top: 24)),
                                  CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: controller.useremail,
                                      hintText:
                                          // "${controller.user!.userBrithday}",
                                          "${myServices.sharedPreferences.getString("email")}",
                                      margin: getMargin(top: 24),
                                      padding: TextFormFieldPadding.PaddingT19,
                                      suffix: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 18,
                                              right: 20,
                                              bottom: 18),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCalendar20x20)),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(56))),
                                  CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: controller.userphone,
                                      hintText:
                                          // "${controller.user!.userEmail}",
                                          "${myServices.sharedPreferences.getString("phone")}",
                                      margin: getMargin(top: 24),
                                      padding: TextFormFieldPadding.PaddingT19,
                                      textInputType: TextInputType.emailAddress,
                                      suffix: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 18,
                                              right: 20,
                                              bottom: 18),
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgClock20x20)),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(56))),

                                  CustomTextFormField(
                                      focusNode: FocusNode(),
                                      controller: controller.userbrithday,
                                      hintText:
                                          // "${controller.user!.userPhone}",
                                          "${myServices.sharedPreferences.getString("brithday")}",
                                      margin: getMargin(top: 24),
                                      padding: TextFormFieldPadding.PaddingT19,
                                      textInputType: TextInputType.emailAddress,
                                      suffix: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 18,
                                              right: 20,
                                              bottom: 18),
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgClock20x20)),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(56))),
                                  // CustomDropDown(
                                  //     focusNode: FocusNode(),
                                  //     icon: Container(
                                  //         margin: getMargin(left: 30, right: 20),
                                  //         child: CustomImageView(
                                  //             svgPath: ImageConstant.imgFavorite20x20)),
                                  //     hintText: "${controller.user[index]['user_name']}",
                                  //     margin: getMargin(top: 24),
                                  //     items: dropdownItemList,
                                  //     onChanged: (value) {}),
                                  // Padding(
                                  //     padding: getPadding(top: 24),
                                  //     child: CustomPhoneNumber(
                                  //         // country: selectedCountry,
                                  //         // controller: phoneNumberController,
                                  //         onTap: (Country country) {
                                  //           // selectedCountry = country;
                                  //         })),
                                  CustomDropDown(
                                      focusNode: FocusNode(),
                                      icon: Container(
                                          margin:
                                              getMargin(left: 30, right: 20),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgFavorite20x20)),
                                      hintText:
                                          "${myServices.sharedPreferences.getString("gander")}",
                                      margin: getMargin(top: 24, bottom: 5),
                                      // items: dropdownItemList1,
                                      onChanged: (value) {})
                                ]),
                          ),
                        );
                      },
                    )),
            bottomNavigationBar: CustomButton(
                onTap: () {
                  controller.editUserData();
                },
                height: getVerticalSize(55),
                text: "Update",
                margin: getMargin(left: 24, right: 24, bottom: 48),
                variant: ButtonVariant.OutlineGreenA7003f)));
  }
}
