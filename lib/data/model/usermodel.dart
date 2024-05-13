class UserModel {
  String? userId;
  String? userName;
  String? userLastName;
  String? userEmail;
  String? userPhone;
  String? userImag;
  String? userVerficycode;
  String? userPassw;
  String? userCreate;
  String? userBrithday;
  String? userGender;

  UserModel(
      {this.userId,
      this.userName,
      this.userLastName,
      this.userEmail,
      this.userPhone,
      this.userImag,
      this.userVerficycode,
      this.userPassw,
      this.userCreate,
      this.userBrithday,
      this.userGender});

  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userName = json['user_name'];
    userLastName = json['user_last_name'];
    userEmail = json['user_email'];
    userPhone = json['user_phone'];
    userImag = json['user_imag'];
    userVerficycode = json['user_verficycode'];
    userPassw = json['user_passw'];
    userCreate = json['user_create'];
    userBrithday = json['user_brithday'];
    userGender = json['user_gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['user_last_name'] = this.userLastName;
    data['user_email'] = this.userEmail;
    data['user_phone'] = this.userPhone;
    data['user_imag'] = this.userImag;
    data['user_verficycode'] = this.userVerficycode;
    data['user_passw'] = this.userPassw;
    data['user_create'] = this.userCreate;
    data['user_brithday'] = this.userBrithday;
    data['user_gender'] = this.userGender;
    return data;
  }
}
