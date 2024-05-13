import 'dart:io';

import 'package:HotelAppUser/core/class/crud.dart';
import 'package:HotelAppUser/linkapi.dart';

class ImageAdminData {
  Crud crud;
  ImageAdminData(this.crud);

  getimageData(hotelid) async {
    var response = await crud.postData(AppLink.linkViewImage, {"hotelid" : hotelid});
    return response.fold((l) => l, (r) => r);
  }



  deletimagehoteldata(imageid , imagename) async {
    var sresponse = await crud
        .postData(AppLink.linkDeleteImage, {"imageid":imageid , "imagename":imagename });
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

  addimagehoteldatawitfile(
     hotelid,  myfile) async {
    var sresponse = await crud.postRequestWithFile(
        AppLink.linkAddImage,
        {
          "hotelid": hotelid,
        },
        myfile);
    return sresponse.fold((l) => l, (r) => r);
  }
}
