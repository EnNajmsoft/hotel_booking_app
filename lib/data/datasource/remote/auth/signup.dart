import '../../../../core/class/crud.dart';
import '../../../../linkapi.dart';


class SignupData {
  Crud crud;
  SignupData(this.crud);


  postdata(
    String username ,
    String userlastname,
    String email ,
    String phone,
    String password,
    String dateofbirth,
    String gander,
    ) async {
    var response = await crud.postData(AppLink.signUp, {
      "username" : username , 
      "userlastname": userlastname,
      "email" : email , 
      "phone" : phone  ,  
      "password": password, 
      "dateofbirth": dateofbirth, 
      "gander": gander, 

    });
    return response.fold((l) => l, (r) => r);
  }
}
