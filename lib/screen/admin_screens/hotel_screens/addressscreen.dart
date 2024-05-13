import 'package:HotelAppUser/controller/admin/address/addcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/admin/hotels/edit_controller.dart';
import '../../../core/utils/size_utils.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_textfild.dart';

// ignore: must_be_immutable
class AddressHotel extends StatelessWidget {
  AddressHotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddressAddAdminControllerImp controller =
        Get.put(AddressAddAdminControllerImp());

    return Scaffold(
      appBar: AppBar(
        title: Text("Add Notes"),
      ),
      body: GetBuilder<AddressAddAdminControllerImp>(
        builder: (controller) => Container(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                CustomTextForm(
                  isNumber: false,
                  valid: (val) {
                    // return validInput(val!, 5, 100, "");
                  },
                  mycontroller: controller.city,
                  hinttext: controller.city.text,
                  iconData: Icons.turn_right_rounded,
                  labeltext: "اسم المدينه ",
                ),

                CustomTextForm(
                  isNumber: false,
                  valid: (val) {
                    // return validInput(val!, 5, 100, "");
                  },
                  mycontroller: controller.street,
                  hinttext: controller.street.text,
                  iconData: Icons.email_outlined,
                  labeltext: "الشارع ",
                ),
                CustomTextForm(
                  isNumber: false,
                  valid: (val) {
                    // return validInput(val!, 5, 100, "");
                  },
                  mycontroller: controller.lat,
                  hinttext: controller.long.text,
                  iconData: Icons.email_outlined,
                  labeltext: "خطوط العرض",
                ),
                CustomTextForm(
                  isNumber: false,
                  valid: (val) {
                    // return validInput(val!, 5, 100, "");
                  },
                  mycontroller: controller.long,
                  hinttext: controller.long.text,
                  iconData: Icons.email_outlined,
                  labeltext: " خطوط الطول",
                ),
                CustomTextForm(
                  isNumber: false,
                  valid: (val) {
                    // return validInput(val!, 5, 100, "");
                  },
                  mycontroller: controller.note,
                  hinttext: controller.note.text,
                  iconData: Icons.email_outlined,
                  labeltext: "  رابط خرائط جوجل",
                ),

                Container(height: 20),
         
                Container(height: 20),
                CustomButton(
                    onTap: () {
                      controller.addaddress();
                    },
                    height: getVerticalSize(55),
                    text: "add",
                    margin: getMargin(top: 24, left: 50, right: 50),
                    variant: ButtonVariant.FillCyan600),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
