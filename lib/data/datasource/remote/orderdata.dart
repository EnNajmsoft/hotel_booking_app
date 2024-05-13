import 'dart:io';

import 'package:HotelAppUser/core/class/crud.dart';
import 'package:HotelAppUser/linkapi.dart';

class OrderData {
  Crud crud;
  OrderData(this.crud);


  getorderData(String userid) async {
    var response = await crud.postData(AppLink.vieworder, {"userid" :userid});
    return response.fold((l) => l, (r) => r);
  }

  cancelorder(orderid) async {
    var sresponse = await crud.postData(AppLink.cancelorder, {"orderid": orderid});
    return sresponse.fold((l) => l, (r) => r);
  }

  // editeActivedata(String hotelactive, hotelid) async {
  //   var sresponse = await crud.postData(AppLink.linkEditActivehotel,
  //       {"hotelactive": hotelactive, "hotelid": hotelid});
  //   return sresponse.fold((l) => l, (r) => r);
  // }

  addorder(Map data) async {
    var sresponse = await crud
        .postData(AppLink.addorder, data);
    return sresponse.fold((l) => l, (r) => r);
  }


  edithoteldata(hotelid, hotelimage, hotelnamear, hotelnameen, hotelnote,
      hotelcity, myfile) async {
    var sresponse;
    if (myfile == null) {
      sresponse = await crud.postData(AppLink.linkEdithotel, {
        "hotelid": hotelid,
        "hotelnamear": hotelnamear,
        "hotelnameen": hotelnameen,
        "hotelnote": hotelnote,
        "hotelcity": hotelcity,
        "hotelimage": hotelimage,
      });
    } else {
      sresponse = await crud.postRequestWithFile(
          AppLink.linkEdithotel,
          {
            "hotelid": hotelid,
            "hotelnamear": hotelnamear,
            "hotelnameen": hotelnameen,
            "hotelnote": hotelnote,
            "hotelcity": hotelcity,
            "hotelimage": hotelimage,
          },
          myfile);
    }

    return sresponse.fold((l) => l, (r) => r);
  }

  addhoteldatawitfile(
      userid, hotelnamear, hotelnameen, hotelnote, hotelcity, myfile) async {
    var sresponse = await crud.postRequestWithFile(
        AppLink.linkAddhotel,
        {
          "userid": userid,
          "hotelnamear": hotelnamear,
          "hotelnameen": hotelnameen,
          "hotelnote": hotelnote,
          "hotelcity": hotelcity,
        },
        myfile);
    return sresponse.fold((l) => l, (r) => r);
  }
}
