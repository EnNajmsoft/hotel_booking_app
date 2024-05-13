import 'dart:convert';
import 'dart:io';
import 'package:HotelAppUser/core/class/statusrequest.dart';
import 'package:HotelAppUser/core/functions/checkinternet.dart';
import 'package:dartz/dartz.dart';
import 'package:path/path.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    if (await checkInternet()) {
      var response = await http.post(Uri.parse(linkurl), body: data);
      print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responsebody = jsonDecode(response.body);
        print(responsebody);
        return Right(responsebody);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
  }

  Future<Either<StatusRequest, Map>> postRequestWithFile(
      String url, Map data, File? image,
      [String? namerequest]) async {
    if (namerequest == null) {
      namerequest = "file";
    }
    var uri = Uri.parse(url);
    var request = http.MultipartRequest("POST", uri);
    if (image != null) {
      var length = await image.length();
      var stream = http.ByteStream(image.openRead());
      stream.cast();
      var multipartFile = http.MultipartFile(namerequest, stream, length,
          filename: basename(image.path));
      request.files.add(multipartFile);
    }

    // add data to requst
    data.forEach((key, value) {
      request.fields[key] = value;
    });
// sind data
    var myrequest = await request.send();
    // for et response body
    var response = await http.Response.fromStream(myrequest);

    if (myrequest.statusCode == 200 || response.statusCode == 201) {
      print(response.body);
      Map responsebody = jsonDecode(response.body);
      return right(responsebody);
    } else {
        return const Left(StatusRequest.serverfailure);
    }
  }
}
