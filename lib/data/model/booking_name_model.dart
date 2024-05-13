class BookingNameModel {

  String? userName;
  String? userLastName;
  String? userEmail;
  String? userPhone;

  BookingNameModel(
      this.userName,
      this.userLastName,
      this.userEmail,
      this.userPhone);

  BookingNameModel.fromJson(Map<String, dynamic> json) {
    userName = json['user_name'];
    userLastName = json['user_last_name'];
    userEmail = json['user_email'];
    userPhone = json['user_phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_name'] = this.userName;
    data['user_last_name'] = this.userLastName;
    data['user_email'] = this.userEmail;
    data['user_phone'] = this.userPhone;
    // data['user_gender'] = this.userGender;
    return data;
  }
}