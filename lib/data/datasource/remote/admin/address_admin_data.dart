import 'dart:io';

import 'package:HotelAppUser/core/class/crud.dart';
import 'package:HotelAppUser/linkapi.dart';

class AddressHotelAdminData {
  Crud crud;
  AddressHotelAdminData(this.crud);
  addaddresshotelData(hotelid, city, street, lat, long,
      note) async {
    var response = await crud.postData(AppLink.linkAddhotelddress, {
      
        "hotelid": hotelid,
        "city": city,
        "street": street,
        "lat": lat,
        "long": long,
        "note": note,
    });
    return response.fold((l) => l, (r) => r);
  }


  editaddresshoteldata(addressid, city, street, lat, long,
      note) async {
    var sresponse;

      sresponse = await crud.postData(AppLink.linkEdithotelddress, {
        "addressid": addressid,
        "city": city,
        "street": street,
        "lat": lat,
        "long": long,
        "note": note,
      });
    return sresponse.fold((l) => l, (r) => r); 
       }
  }



