import 'package:e_commerce_app/controller/test_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/class/handling_data_view.dart';
import 'core/constant/colorapp.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return SafeArea(

      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 5,
          title: Text("TestView"),
          backgroundColor: ColorApp.primaryColor,
        ),

        body: GetBuilder<TestController>(
          builder: (controller) {
            return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, index) {
                  return Text(
                    "${controller.data}",
                    style: TextStyle(fontSize: 20),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
