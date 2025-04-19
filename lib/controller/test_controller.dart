import 'package:e_commerce_app/core/class/statusRequest.dart';
import 'package:e_commerce_app/data/dataSource/remote/test_data.dart';
import 'package:get/get.dart';

import '../core/function/handling_data.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());
  List data = [];
  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    print(
      "=================================================================RESPONSE ===> $response",
    );
    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == 'success') {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
