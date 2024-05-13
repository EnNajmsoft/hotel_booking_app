 import 'dart:async';

import 'package:HotelAppUser/controller/admin/images/imagecontroller.dart';
import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/data/datasource/remote/admin/image_admin_data.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/data/model/imae_model.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:get/get.dart';

class ViewImageAdminController extends GetxController {
  ImageAdminData imageadmindata = ImageAdminData(Get.find());
  HotelModel? hotelModel;

ImageModel? image;
  StatusRequest statusRequest = StatusRequest.none;


deletotelimage() async {

      statusRequest = StatusRequest.loading;
      update();
      var response = await imageadmindata.deletimagehoteldata(
          image!.imagId,
          image!.imageName,
       );
      statusRequest = StatusRequest.success;
      if (response['status'] == "success") {
        print(response['status']);
       Get.offNamed(AppRoutes.galleryadminscreen);
      ImaeAdminControllerImp c = Get.put(ImaeAdminControllerImp());
      c.getimagedata(hotelModel!);
      } else {}
    
    update();
  }
@override
  void onInit() {
    image = Get.arguments['imagemodel'];
    hotelModel = Get.arguments['hotelModel'];

    super.onInit();
  }


 }