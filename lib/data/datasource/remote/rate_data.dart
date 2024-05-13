
import 'package:HotelAppUser/core/class/crud.dart';
import 'package:HotelAppUser/linkapi.dart';

class RateData {
  Crud crud;
  RateData(this.crud);

  getrateData( ratehotelid) async {
    var response = await crud.postData(AppLink.viewrate, {"ratehotelid": ratehotelid});
    return response.fold((l) => l, (r) => r);
  }



  addrate(Map data) async {
    var sresponse = await crud.postData(AppLink.addrate, data);
    return sresponse.fold((l) => l, (r) => r);
  }


}
