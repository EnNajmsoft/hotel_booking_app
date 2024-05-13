// ignore: must_be_immutable
import 'package:HotelAppUser/controller/admin/images/addimagecontroller.dart';
import 'package:HotelAppUser/core/utils/size_utils.dart';
import 'package:HotelAppUser/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddImageHotel extends StatelessWidget {
  ImageAddAdminControllerImp controller = Get.put(ImageAddAdminControllerImp());
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Add image"),
      ),
      body: GetBuilder<ImageAddAdminControllerImp>(
        builder: (controller) => Container(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Column(
            children: [
             

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
                   controller.addimage();
                  },
                  height: getVerticalSize(55),
                  text: "Add",
                  margin: getMargin(top: 24, left: 50, right: 50),
                  variant: ButtonVariant.FillCyan600),

    
            ],
          ),
        ),
      ),
    );
  }
}
