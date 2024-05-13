import 'package:HotelAppUser/core/class/crud.dart';
import 'package:HotelAppUser/linkapi.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);
  gethotelData() async {
    var response = await crud.postData(AppLink.homehotel, {});
    return response.fold((l) => l, (r) => r);
  }
  getroomData(userid) async {
    var response = await crud.postData(AppLink.homeroom, {"userid": userid});
    return response.fold((l) => l, (r) => r);
  }
  searchdata( search) async {
    var sresponse = await crud.postData(AppLink.search, {"search" : search});
    return sresponse.fold((l) => l, (r) => r);
  }
}



