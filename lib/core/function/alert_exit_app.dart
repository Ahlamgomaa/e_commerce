import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
   Get.defaultDialog(
    title: "Exit App",
    content: Text("Are you sure you want to exit the app?"),
    actions: [
      ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text('Exit'),
      ),
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text('Cancel'),
      ),
    ],
  );
   return Future.value( true);
}
