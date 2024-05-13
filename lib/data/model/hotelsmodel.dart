class HotelModel {
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

  HotelModel(
      {this.hotelId,
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

  HotelModel.fromJson(Map<String, dynamic> json) {
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
