import 'package:e_commerce_app/controller/test_controller.dart';
import 'package:e_commerce_app/core/class/statusRequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title: Text("TestView")),
      body: GetBuilder<TestController>(
        builder: (controller) {
          if (controller.statusRequest == StatusRequest.loading) {
            return Center(child: Text("loading"));
          } else if (controller.statusRequest == StatusRequest.offlineFailure) {
            return Center(child: Text("offline Failure "));
          } else if (controller.statusRequest == StatusRequest.serverFailure) {
            return Center(child: Text("server Failure "));
          } else {
            return ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${controller.data[index]['user_name']}"),
                  subtitle: Text("${controller.data[index]['user_email']}"),
                );
              },
            );
          }
        },
      ),
    );
  }
}
