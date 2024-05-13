

import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

imageUploadeCamera() async{

  final PickedFile? file = await ImagePicker().getImage(source: ImageSource.camera, imageQuality: 90);

  if(file != null){
    return File(file.path);
  }else{
    return null;
  }
}

fileUploadGallery() async{
FilePickerResult? result = await FilePicker.platform.pickFiles(
type: FileType.custom,
allowedExtensions:["png" ,"PNG","jpg", "JPG" ,"JPEG" ,"jpeg" ,
        "GIF","gif"]
);
if(result != null){
  print(File(result.files.single.path!));
  return File(result.files.single.path!);
}else{
  return null;
}

}