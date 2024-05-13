import 'package:HotelAppUser/core/class/crud.dart';
import 'package:HotelAppUser/linkapi.dart';

class UserData {
  Crud crud;
  UserData(this.crud);
  getData(userid) async {
    var response = await crud.postData(AppLink.userprofil, {'userid':userid});
    return response.fold((l) => l, (r) => r);
  }

  // editdata(userid,
  //          username,
  //          userlastname,
  //          useremail,
  //          userphone,
  //          userimag,
  //          seausergenderrch,
  //          ) async {
  //   var sresponse = await crud.postData(AppLink.userprofiledit, {
  //     "user_id": user_id,
  //     "user_name": user_name,
  //     "user_last_name": user_last_name,
  //     "user_email": user_email,
  //     "user_phone": user_phone,
  //     "user_imag": user_imag,
  //     "user_gender": seauser_genderrch
  //     });
  //   return sresponse.fold((l) => l, (r) => r);
  // }

  
  edituserata(userid,
           username,
           userlastname,
           useremail,
           userphone,
           userbrithday,
           userimag,
           seausergenderrch, myfile) async {
    var sresponse;
    if (myfile == null) {
      sresponse = await crud.postData(AppLink.userprofiledit, {
        "userid"       : userid,
        "username"     : username,
        "userlastname" : userlastname,
        "useremail"    : useremail,
        "userphone"    : userphone,
        "userbrithday" : userbrithday,
        "usergender"   : seausergenderrch,
        "userimage"    : userimag,

      });
    } else {
      sresponse = await crud.postRequestWithFile(
          AppLink.userprofiledit,
          {
        "userid"        : userid,
        "username"      : username,
        "userlastname"  : userlastname,
        "useremail"     : useremail,
        "userphone"     : userphone,
        "userbrithday"  : userbrithday,
        "usergender"    : seausergenderrch,
        "userimage"     : userimag,
          },
          myfile);
    }

    return sresponse.fold((l) => l, (r) => r);
  }
}
