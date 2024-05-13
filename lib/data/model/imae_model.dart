class ImageModel {
  String? imagId;
  String? imagHotelidi;
  String? imageName;
  String? imageCreateDate;

  ImageModel(
      {this.imagId, this.imagHotelidi, this.imageName, this.imageCreateDate});

  ImageModel.fromJson(Map<String, dynamic> json) {
    imagId = json['imag_id'];
    imagHotelidi = json['imag_hotelidi'];
    imageName = json['image_name'];
    imageCreateDate = json['image_create_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imag_id'] = this.imagId;
    data['imag_hotelidi'] = this.imagHotelidi;
    data['image_name'] = this.imageName;
    data['image_create_date'] = this.imageCreateDate;
    return data;
  }
}
