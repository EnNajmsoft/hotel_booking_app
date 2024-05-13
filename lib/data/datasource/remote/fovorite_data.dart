import 'package:HotelAppUser/core/class/crud.dart';
import 'package:HotelAppUser/linkapi.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addFavorite(String userid, String roomid) async {
    var response = await crud.postData(
        AppLink.favoriteAdd, {"userid": userid, "roomid": roomid});
    return response.fold((l) => l, (r) => r);
  }

  removeFavorite(String userid, String roomid) async {
    var response = await crud.postData(
        AppLink.favoriteRemove, {"userid": userid, "roomid": roomid});
    return response.fold((l) => l, (r) => r);
  }
}
