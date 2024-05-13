import 'package:HotelAppUser/core/class/crud.dart';
import 'package:HotelAppUser/linkapi.dart';

class SearchData {
  Crud crud;
  SearchData(this.crud);
  searchdata(String search) async {
    var sresponse = await crud.postData(AppLink.search, {"search": search});
    return sresponse.fold((l) => l, (r) => r);
  }
}
