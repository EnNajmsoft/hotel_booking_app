import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/screen/admin_screens/adminwidht/hotelcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/admin/rooms/room_admin_controller.dart';
import '../../../linkapi.dart';
import '../../../widgets/custom_switch.dart';

// ignore: must_be_immutable
class RoomScreenAdmin extends StatelessWidget {
  RoomAdminControllerImp controller = Get.put(RoomAdminControllerImp());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: ColorConstant.gray900,
        appBar: AppBar(
          title: Center(child: Text("rooms")),
        backgroundColor: ColorConstant.gray900,),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.gotoaddroom(controller.hotelModel!);
          },
          child: Icon(Icons.add),
        ),
        body: GetBuilder<RoomAdminControllerImp>(
          builder: (controller) => Container(
            child: Padding(
              padding: getPadding(top: 22, right: 14, left: 14),
              child: ListView.builder(
                  itemCount: controller.rooms.length,
                  itemBuilder: (context, index) {
                    return Container(
                        child: Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Card(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Image.network(
                                      "${AppLink.linkImageRoomRoot}/${controller.rooms[index].roomMainImag}",
                                      width: 90,
                                      height: 100,
                                      fit: BoxFit.fill,
                                    )),

                                Expanded(
                                    flex: 8,
                                    child: ListTile(
                                      title: Text(
                                          "${controller.rooms[index].roomName}"),
                                      subtitle: Text(
                                          "${controller.rooms[index].roomNote}"),
                                      trailing: Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            IconButton(
                                              icon: Icon(Icons.delete),
                                              onPressed: () {
                                                Get.defaultDialog(
                                                  title: "تحذير",
                                                  middleText:
                                                      "هل انت متاكد من عملية الحذف ؟",
                                                  onCancel: () {
                                                    Get.back();
                                                  },
                                                  onConfirm: () {
                                                       controller.imagename =
                                                                controller.rooms[index].roomMainImag!;
                                                    controller.roomid = controller
                                                        .rooms[index].roomId!;
                                                    controller.deletroom();
                                                    Get.back();
                                                  },
                                                );
                                              },
                                            ),
                                            IconButton(
                                              icon: Icon(Icons.edit),
                                              onPressed: () {
                                                controller.goToEditRoom(controller.rooms[index]);
                                              },
                                            ),
                                            CustomSwitch(
                                                value: controller.isActive,
                                                onChanged: (value) {
                                                    controller.roomid = controller
                                                      .rooms[index].roomId!;
                                                  print(value);
                                                  controller.activeChane(value);
                                                }),
                                          ],
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),

                        // CardHotels(
                        //     roommolel: controller.rooms[index],
                        //     onEdit: () {
                        //       // controller
                        //       //     .goToEditHotel(controller.rooms[index]);
                        //     },
                        //     onDelete: () {
                        //       Get.defaultDialog(
                        //         title: "تحذير",
                        //         middleText: "هل انت متاكد من عملية الحذف ؟",
                        //         onCancel: () {
                        //           Get.back();
                        //         },
                        //         onConfirm: () {
                        //           controller.imagename =
                        //               controller.hotels[index].hotelImagMain!;
                        //           controller.id =
                        //               controller.hotels[index].hotelId!;
                        //           controller.delethotel();
                        //           Get.back();
                        //         },
                        //       );
                        //     },
                        //     ontap: () {}),
                      ],
                    ));
                  }),
            ),
          ),
        ));
  }
}
