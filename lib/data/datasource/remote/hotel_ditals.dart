import 'package:HotelAppUser/core/class/crud.dart';
import 'package:HotelAppUser/linkapi.dart';

class hotelDitalData {
  Crud crud;
  hotelDitalData(this.crud);
  gethoteldetalData( userid , hotelid ) async {
    var response = await crud.postData(AppLink.hoteldetalpage, {"userid": userid , "hotelid": hotelid});
    return response.fold((l) => l, (r) => r);
  }
}


