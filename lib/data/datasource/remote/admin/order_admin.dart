import 'dart:io';
import 'package:HotelAppUser/core/class/crud.dart';
import 'package:HotelAppUser/linkapi.dart';

class OrderAdminData {
  Crud crud;
  OrderAdminData(this.crud);

  getorderData(String hotelid) async {
    var response =
        await crud.postData(AppLink.linkVieweOrder, {"hotelid": hotelid});
    return response.fold((l) => l, (r) => r);
  }

  // editeActivedata(String roomactive, roomid) async {
  //   var sresponse = await crud.postData(AppLink.linkEditActiveRoom,
  //       {"roomactive": roomactive, "roomid": roomid});
  //   return sresponse.fold((l) => l, (r) => r);
  // }

  // deletroomdata(roomid, imagename) async {
  //   var sresponse = await crud.postData(
  //       AppLink.linkdeletRoom, {"roomid": roomid, "imagename": imagename});
  //   return sresponse.fold((l) => l, (r) => r);
  // }

  // editroomdata(roomid, roomname, roomnamear, roomprice, roomdescont, roomnote,
  //     roomimage, myfile) async {
  //   var sresponse;
  //   if (myfile == null) {
  //     sresponse = await crud.postData(AppLink.linkEditRoom, {
  //       "roomid": roomid,
  //       "roomname": roomname,
  //       "roomnamear": roomnamear,
  //       "roomprice": roomprice,
  //       "roomdescont": roomdescont,
  //       "roomnote": roomnote,
  //       "roomimage": roomimage,
  //     });
  //   } else {
  //     sresponse = await crud.postRequestWithFile(
  //         AppLink.linkEditRoom,
  //         {
  //           "roomid": roomid,
  //           "roomname": roomname,
  //           "roomnamear": roomnamear,
  //           "roomprice": roomprice,
  //           "roomdescont": roomdescont,
  //           "roomnote": roomnote,
  //           "roomimage": roomimage,
  //         },
  //         myfile);
  //   }

  //   return sresponse.fold((l) => l, (r) => r);
  // }

  // addroomdatawitfile(hotelid, roomname, roomnamear, roomprice, roomdescont,
  //     roomnote, myfile) async {
  //   var sresponse = await crud.postRequestWithFile(
  //       AppLink.linkAddRoom,
  //       {
  //         "hotelid": hotelid,
  //         "roomname": roomname,
  //         "roomnamear": roomnamear,
  //         "roomprice": roomprice,
  //         "roomdescont": roomdescont,
  //         "roomnote": roomnote,
  //       },
  //       myfile);
  //   return sresponse.fold((l) => l, (r) => r);
  // }
}
