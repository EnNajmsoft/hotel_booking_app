import 'dart:io';

import 'package:HotelAppUser/core/class/crud.dart';
import 'package:HotelAppUser/linkapi.dart';

class HotelAdminData {
  Crud crud;
  HotelAdminData(this.crud);
  gethotelData() async {
    var response = await crud.postData(AppLink.linkViewhotel, {});
    return response.fold((l) => l, (r) => r);
  }



  searchdata(search) async {
    var sresponse = await crud.postData(AppLink.search, {"search": search});
    return sresponse.fold((l) => l, (r) => r);
  }
  
  editeActivedata(String hotelactive, hotelid) async {
    var sresponse = await crud.postData(AppLink.linkEditActivehotel,
        {"hotelactive": hotelactive, "hotelid": hotelid});
    return sresponse.fold((l) => l, (r) => r);
  }

   delethoteldata(imagename, id) async {
    var sresponse = await crud.postData(AppLink.linkdelethotel, {"imagename": imagename ,"id": id });
    return sresponse.fold((l) => l, (r) => r);
  }



  edithoteldata(
      hotelid, hotelimage, hotelnamear, hotelnameen,  hoteldescribar, hoteldescriben , myfile) async {
     var sresponse;
     if(myfile == null){
      sresponse = await crud
          .postData(AppLink.linkEdithotel, {
        "hotelid":     hotelid,
        "hotelnamear":      hotelnamear,
        "hotelnameen":      hotelnameen,
        "hoteldescribar":   hoteldescribar,
        "hoteldescriben":   hoteldescriben,
        "hotelimage":       hotelimage,
    
        

      });
     }else{
       sresponse = await crud.postRequestWithFile(
          AppLink.linkEdithotel,
          {
            "hotelid": hotelid,
            "hotelnamear": hotelnamear,
            "hotelnameen": hotelnameen,
            "hoteldescribar": hoteldescribar,
            "hoteldescriben": hoteldescriben,
            "hotelimage": hotelimage,
            

          },
          myfile);
     }
  
    return sresponse.fold((l) => l, (r) => r);
  }






   addhoteldatawitfile(hotelownerid,hotelnamear, hotelnameen, hoteldescribar, hoteldescriben ,myfile) async {
    var sresponse = await crud.postRequestWithFile(AppLink.linkAddhotel,  {
          "hotelownerid": hotelownerid,
          "hotelnamear": hotelnamear,
          "hotelnameen": hotelnameen,
          "hoteldescribar": hoteldescribar,
          "hoteldescriben": hoteldescriben,
   
         
          },
          myfile);
    return sresponse.fold((l) => l, (r) => r);
  }

    
}