import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../controller/admin/rooms/add_controller.dart';
import '../../../core/functions/validinput.dart';
import '../../../core/utils/size_utils.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_textfild.dart';



// ignore: must_be_immutable
class AddRoom extends StatelessWidget {
  AddRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RoomAddAdminControllerImp controller =
        Get.put(RoomAddAdminControllerImp());

    return Scaffold(
      appBar: AppBar(
        title: Text("Add rooms"),
      ),
      body: GetBuilder<RoomAddAdminControllerImp>(
        builder: (controller) => Container(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                CustomTextForm(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 100, "");
                  },
                  mycontroller: controller.roomnamear,
                  hinttext: "ادخل الاسم باللغه العربيه",
                  iconData: Icons.turn_right_rounded,
                  labeltext: "اسم الغرفه ",
                ),

                CustomTextForm(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 100, "");
                  },
                  mycontroller: controller.roomname,
                  hinttext: "12",
                  iconData: Icons.email_outlined,
                  labeltext: "الاسم بالنجليزي",
                ),
                CustomTextForm(
                  isNumber: true,
                  valid: (val) {
                    return validInput(val!, 5, 100, "");
                  },
                  mycontroller: controller.roomprice,
                  hinttext: "18",
                  iconData: Icons.email_outlined,
                  labeltext: "السعر",
                ),
                CustomTextForm(
                  isNumber: true,
                  valid: (val) {
                    return validInput(val!, 5, 100, "");
                  },
                  mycontroller: controller.roomdescont,
                  hinttext: "18",
                  iconData: Icons.email_outlined,
                  labeltext: "التخفيض",
                ),
                CustomTextForm(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 100, "");
                  },
                  mycontroller: controller.roomnote,
                  hinttext: "18",
                  iconData: Icons.email_outlined,
                  labeltext: "ملاحظه",
                ),
                // CustomTextFormField(
                //     validator: (value) {
                //       return validInput(value!, 10, 30, '');
                //     },
                //     focusNode: FocusNode(),
                //     controller: controller.hotemnamear,
                //     hintText: "Full Name",
                //     margin: getMargin(top: 24),
                //     fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500),
                // CustomTextFormField(
                //     validator: (value) {
                //       return validInput(value!, 10, 30, '');
                //     },
                //     focusNode: FocusNode(),
                //     controller: controller.hotemnameen,
                //     hintText: "Full Name",
                //     margin: getMargin(top: 24),
                //     fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500),

                Container(height: 20),
                MaterialButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                            height: 120,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Please Choose Image",
                                      style: TextStyle(fontSize: 22)),
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.choosefile();
                                  },

                                  // onTap: () async {
                                  //   XFile? xfile = await ImagePicker()
                                  //       .pickImage(
                                  //           source: ImageSource.gallery);
                                  //   Navigator.of(context).pop();
                                  //  controller.myfile = File(xfile!.path);

                                  // },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: double.infinity,
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "From Gallery",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.cooseimae();
                                  },
                                  // onTap: () async {
                                  //   XFile? xfile = await ImagePicker()
                                  //       .pickImage(source: ImageSource.camera);
                                  //   Navigator.of(context).pop();

                                  //   controller.myfile = File(xfile!.path);
                                  // },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: double.infinity,
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "From Camera",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                )
                              ],
                            )));
                  },
                  child: Text("Choose Image"),
                  textColor: Colors.white,
                  color: controller.myfile == null ? Colors.blue : Colors.green,
                ),
                //  if (controller.myfile != null)
                //      CircleAvatar(
                //       child: Container(
                //         height: 100,
                //         width: 100,
                //       ),
                //       backgroundImage: NetworkImage(

                //         controller.myfile!.path,

                //       ),
                //     ),
                if (controller.myfile != null)
                  Container(
                      child: Image.file(
                    controller.myfile!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  )),

                Container(height: 20),
                CustomButton(
                    onTap: () {
                      controller.addRoom();
                    },
                    height: getVerticalSize(55),
                    text: "Add",
                    margin: getMargin(top: 24, left: 50, right: 50),
                    variant: ButtonVariant.FillCyan600),

                // MaterialButton(
                //   onPressed: () {
                //     controller.addHotel();
                //   },
                //   child: Text("Add"),
                //   textColor: Colors.white,
                //   color: Colors.blue,
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
