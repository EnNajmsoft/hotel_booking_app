import 'dart:io';
import 'package:HotelAppUser/core/services/services.dart';
import 'package:HotelAppUser/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
MyServices myServices = Get.find();
Future<bool> alertExitAdminApp() {
  Get.defaultDialog(
      title: "تنبيه",
      titleStyle:
          const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      middleText: "هل تريد الخروج من الحساب",
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
              Color.fromARGB(255, 8, 168, 217),
            )),
            onPressed: () {
              myServices.sharedPreferences.setString("step", "1");
              // myServices.sharedPreferences.clear();

              Get.offAllNamed(AppRoutes.signInScreen);
            },
            child: const Text("تاكيد")),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
              Color.fromARGB(255, 8, 168, 217),
            )),
            onPressed: () {
              Get.back();
            },
            child: const Text("الغاء"))
      ]);
  return Future.value(true);
}
