// import 'package:HotelAppUser/data/model/hotelsmodel.dart';
// import 'package:HotelAppUser/linkapi.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../controller/admin/hotel_admin_controller.dart';
// import '../../../widgets/custom_switch.dart';

// class CardHotels extends StatelessWidget {
//   final void Function() ontap;
//   final HotelModel hotelmodel;
//  final  HotelAdminControllerImp controller;
//   final void Function()? onDelete;
//   final void Function()? onEdit;


//   const CardHotels(
//       {Key? key,
//       required this.ontap,
//       required this.hotelmodel,
//       required this.onDelete, this.onEdit,  required this.controller})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: ontap,
//       child: Card(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Expanded(
//                 flex: 3,
//                 child: Image.network(
//                   "${AppLink.linkImageHotelRoot}/${hotelmodel.hotelImagMain}",
//                   width: 90,
//                   height: 100,
//                   fit: BoxFit.fill,
//                 )),
          
          
//             Expanded(
//                 flex: 8,
//                 child: ListTile(
//                   title: Text("${hotelmodel.hotelNameAr}"),
//                   subtitle: Text("${hotelmodel.hotelNameEn}"),
//                   trailing: Expanded(
//                    flex: 2,
//                     child: Row(
                      
//                       mainAxisSize : MainAxisSize.min,
//                       children: [
                         
//                         IconButton(
//                           icon: Icon(Icons.delete),
//                           onPressed: onDelete,
//                         ),
//                          IconButton(
//                           icon: Icon(Icons.edit),
//                           onPressed: onEdit,
//                         ),
//                         CustomSwitch(value: , onChanged: (value){
//                           controller.hotelid =hotelmodel.hotelId!;
//                           controller.activeChane(value);

//                         },)
//                     ],
                    
//                     ),
//                   ),
//                 )),
//                 //                  Expanded(
//                 // flex: 1,
//                 // child: CustomSwitch(value: false, onChanged: (value) {})),

//           ],
//         ),
//       ),
//     );
//   }
// }
