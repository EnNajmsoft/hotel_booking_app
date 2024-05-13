class RoomsModel {
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
  String? favorite;

  RoomsModel(
      {this.roomId,
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
      this.favorite});

  RoomsModel.fromJson(Map<String, dynamic> json) {
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
    favorite = json['favorite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
    data['favorite'] = this.favorite;
    return data;
  }
}
