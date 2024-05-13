


import 'package:HotelAppUser/controller/admin/images/viewImagecontroller.dart';
import 'package:HotelAppUser/core/utils/color_constant.dart';
import 'package:HotelAppUser/core/utils/size_utils.dart';
import 'package:HotelAppUser/data/model/imae_model.dart';
import 'package:HotelAppUser/linkapi.dart';
import 'package:HotelAppUser/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:get/get.dart';

class ViewImageWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  ViewImageAdminController controller = Get.put(ViewImageAdminController());

  return Scaffold(
        backgroundColor: ColorConstant.gray900,
      floatingActionButton: FloatingActionButton(
        backgroundColor:  Colors.red[400],
        onPressed: () {
          controller.deletotelimage();
        },
        child: Icon(Icons.delete ,),
      ),
    body: Center(
      child: CustomImageView(
          url: "${AppLink.linkImageHotelRoot}/${controller.image!.imageName}",
          fit: BoxFit.fill,
          radius: BorderRadius.circular(
            getHorizontalSize(
              12,
            ),
          ),
          onTap: () {
           
          },
        ),
    ),
  );
  }
  
  }



