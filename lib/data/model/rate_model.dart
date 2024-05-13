class RateModel {
  String? rateId;
  String? rateHotelId;
  String? rateOrderId;
  String? rateReating;
  String? rateComment;
  String? rateCreatdate;
  String? userId;
  String? userName;
  String? userLastName;
  String? userEmail;
  String? userPhone;
  String? userImag;
  String? userVerficycode;
  String? usersApprove;
  String? userPassw;
  String? userCreate;
  String? userBrithday;
  String? userGender;
  String? orderId;
  String? orderUserId;
  String? orderRoomId;
  String? orderCmrName;
  String? orderCmrPhone;
  String? orderStartDate;
  String? orderEndDate;
  String? orderStatet;
  String? orderPrice;
  String? orderCreatDate;
  String? orderCmrComent;
  String? orderNote;
  String? roomId;
  String? roomName;
  String? roomNamear;
  String? roomMainImag;
  String? roomActive;
  String? roomHotelId;
  String? roomPrice;
  String? roomDescont;
  String? roomNote;
  String? hotelId;
  String? hotelOwnerId;
  String? hotelNameAr;
  String? hotelNameEn;
  String? hotelImagMain;
  String? hotelCreat;
  String? hotelAprrove;
  String? hotelActive;
  String? hotelDescribAr;
  String? hotelDescribEn;
  String? hotelViews;
  String? hotelRiat;
  String? addressId;
  String? addressHotelId;
  String? addressCity;
  String? addressStreet;
  String? addressLong;
  String? addressLat;
  String? addressNote;
  String? addressCreatdate;

  RateModel(
      {this.rateId,
      this.rateHotelId,
      this.rateOrderId,
      this.rateReating,
      this.rateComment,
      this.rateCreatdate,
      this.userId,
      this.userName,
      this.userLastName,
      this.userEmail,
      this.userPhone,
      this.userImag,
      this.userVerficycode,
      this.usersApprove,
      this.userPassw,
      this.userCreate,
      this.userBrithday,
      this.userGender,
      this.orderId,
      this.orderUserId,
      this.orderRoomId,
      this.orderCmrName,
      this.orderCmrPhone,
      this.orderStartDate,
      this.orderEndDate,
      this.orderStatet,
      this.orderPrice,
      this.orderCreatDate,
      this.orderCmrComent,
      this.orderNote,
      this.roomId,
      this.roomName,
      this.roomNamear,
      this.roomMainImag,
      this.roomActive,
      this.roomHotelId,
      this.roomPrice,
      this.roomDescont,
      this.roomNote,
      this.hotelId,
      this.hotelOwnerId,
      this.hotelNameAr,
      this.hotelNameEn,
      this.hotelImagMain,
      this.hotelCreat,
      this.hotelAprrove,
      this.hotelActive,
      this.hotelDescribAr,
      this.hotelDescribEn,
      this.hotelViews,
      this.hotelRiat,
      this.addressId,
      this.addressHotelId,
      this.addressCity,
      this.addressStreet,
      this.addressLong,
      this.addressLat,
      this.addressNote,
      this.addressCreatdate});

  RateModel.fromJson(Map<String, dynamic> json) {
    rateId = json['rate_id'];
    rateHotelId = json['rate_hotel_id'];
    rateOrderId = json['rate_order_id'];
    rateReating = json['rate_reating'];
    rateComment = json['rate_comment'];
    rateCreatdate = json['rate_creatdate'];
    userId = json['user_id'];
    userName = json['user_name'];
    userLastName = json['user_last_name'];
    userEmail = json['user_email'];
    userPhone = json['user_phone'];
    userImag = json['user_imag'];
    userVerficycode = json['user_verficycode'];
    usersApprove = json['users_approve'];
    userPassw = json['user_passw'];
    userCreate = json['user_create'];
    userBrithday = json['user_brithday'];
    userGender = json['user_gender'];
    orderId = json['order_id'];
    orderUserId = json['order_user_id'];
    orderRoomId = json['order_room_id'];
    orderCmrName = json['order_cmr_name'];
    orderCmrPhone = json['order_cmr_phone'];
    orderStartDate = json['order_start_date'];
    orderEndDate = json['order_end_date'];
    orderStatet = json['order_statet'];
    orderPrice = json['order_price'];
    orderCreatDate = json['order_creat_date'];
    orderCmrComent = json['order_cmr_coment'];
    orderNote = json['order_note'];
    roomId = json['room_id'];
    roomName = json['room_name'];
    roomNamear = json['room_namear'];
    roomMainImag = json['room_main_imag'];
    roomActive = json['room_active'];
    roomHotelId = json['room_hotel_id'];
    roomPrice = json['room_price'];
    roomDescont = json['room_descont'];
    roomNote = json['room_note'];
    hotelId = json['hotel_id'];
    hotelOwnerId = json['hotel_owner_id'];
    hotelNameAr = json['hotel_name_ar'];
    hotelNameEn = json['hotel_name_en'];
    hotelImagMain = json['hotel_imag_main'];
    hotelCreat = json['hotel_creat'];
    hotelAprrove = json['hotel_aprrove'];
    hotelActive = json['hotel_active'];
    hotelDescribAr = json['hotel_describ_ar'];
    hotelDescribEn = json['hotel_describ_en'];
    hotelViews = json['hotel_views'];
    hotelRiat = json['hotel_riat'];
    addressId = json['address_id'];
    addressHotelId = json['address_hotel_id'];
    addressCity = json['address_city'];
    addressStreet = json['address_street'];
    addressLong = json['address_long'];
    addressLat = json['address_lat'];
    addressNote = json['address_note'];
    addressCreatdate = json['address_creatdate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rate_id'] = this.rateId;
    data['rate_hotel_id'] = this.rateHotelId;
    data['rate_order_id'] = this.rateOrderId;
    data['rate_reating'] = this.rateReating;
    data['rate_comment'] = this.rateComment;
    data['rate_creatdate'] = this.rateCreatdate;
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['user_last_name'] = this.userLastName;
    data['user_email'] = this.userEmail;
    data['user_phone'] = this.userPhone;
    data['user_imag'] = this.userImag;
    data['user_verficycode'] = this.userVerficycode;
    data['users_approve'] = this.usersApprove;
    data['user_passw'] = this.userPassw;
    data['user_create'] = this.userCreate;
    data['user_brithday'] = this.userBrithday;
    data['user_gender'] = this.userGender;
    data['order_id'] = this.orderId;
    data['order_user_id'] = this.orderUserId;
    data['order_room_id'] = this.orderRoomId;
    data['order_cmr_name'] = this.orderCmrName;
    data['order_cmr_phone'] = this.orderCmrPhone;
    data['order_start_date'] = this.orderStartDate;
    data['order_end_date'] = this.orderEndDate;
    data['order_statet'] = this.orderStatet;
    data['order_price'] = this.orderPrice;
    data['order_creat_date'] = this.orderCreatDate;
    data['order_cmr_coment'] = this.orderCmrComent;
    data['order_note'] = this.orderNote;
    data['room_id'] = this.roomId;
    data['room_name'] = this.roomName;
    data['room_namear'] = this.roomNamear;
    data['room_main_imag'] = this.roomMainImag;
    data['room_active'] = this.roomActive;
    data['room_hotel_id'] = this.roomHotelId;
    data['room_price'] = this.roomPrice;
    data['room_descont'] = this.roomDescont;
    data['room_note'] = this.roomNote;
    data['hotel_id'] = this.hotelId;
    data['hotel_owner_id'] = this.hotelOwnerId;
    data['hotel_name_ar'] = this.hotelNameAr;
    data['hotel_name_en'] = this.hotelNameEn;
    data['hotel_imag_main'] = this.hotelImagMain;
    data['hotel_creat'] = this.hotelCreat;
    data['hotel_aprrove'] = this.hotelAprrove;
    data['hotel_active'] = this.hotelActive;
    data['hotel_describ_ar'] = this.hotelDescribAr;
    data['hotel_describ_en'] = this.hotelDescribEn;
    data['hotel_views'] = this.hotelViews;
    data['hotel_riat'] = this.hotelRiat;
    data['address_id'] = this.addressId;
    data['address_hotel_id'] = this.addressHotelId;
    data['address_city'] = this.addressCity;
    data['address_street'] = this.addressStreet;
    data['address_long'] = this.addressLong;
    data['address_lat'] = this.addressLat;
    data['address_note'] = this.addressNote;
    data['address_creatdate'] = this.addressCreatdate;
    return data;
  }
}
