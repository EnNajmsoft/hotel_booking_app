import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "تنبيه",
      titleStyle:const  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      middleText: "هل تريد الخروج من التطبيق",
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(
              Color.fromARGB(255, 8, 168, 217),
            )),
            onPressed: () {
              exit(0);
              
            },
            child:const Text("تاكيد")),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(
              Color.fromARGB(255, 8, 168, 217),
            )),
            onPressed: () {
              Get.back();
            },
            child:const Text("الغاء"))
      ]);
  return Future.value(true);
}
