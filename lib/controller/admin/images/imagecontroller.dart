
import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/functions/handingdatacontroller.dart';
import 'package:HotelAppUser/data/datasource/remote/admin/image_admin_data.dart';
import 'package:HotelAppUser/data/model/hotelsmodel.dart';
import 'package:HotelAppUser/data/model/imae_model.dart';
import 'package:get/get.dart';

abstract class ImaeAdminController extends GetxController {
  initialData();
  getimagedata(HotelModel hotelm);
  editimage();
  delethotel();
}

class ImaeAdminControllerImp extends ImaeAdminController {

  ImageAdminData imageadmindata = ImageAdminData(Get.find());
  List<ImageModel> imadesmodel = [];
  late StatusRequest statusRequest;
 HotelModel? hotel;
 String? hotelid;
  @override
  delethotel() {

  }

  @override
  editimage() {

  }

  @override
  getimagedata(hotelm)  async {
    statusRequest = StatusRequest.loading;
    var response = await imageadmindata.getimageData(hotelm.hotelId);
    print("=============================== images============= $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        imadesmodel.clear();
        List responsedata = response['data'];
        imadesmodel.addAll(responsedata.map((e) => ImageModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  initialData() {
    hotel = Get.arguments['hotelModel'];
    // hotelid =hotel!.hotelId;
getimagedata(hotel!);
update();

  }
 @override
  void onInit() {
  initialData();
update();
    super.onInit();
  }



}