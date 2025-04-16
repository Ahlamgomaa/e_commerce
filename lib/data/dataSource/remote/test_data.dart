import 'package:e_commerce_app/linkApi.dart';

import '../../../core/class/crud.dart';

class TestData {
  Crud crud;

  TestData(this.crud);

  getData() async {
    var response = await crud.postData(LinkApi.getData, {});
    response.fold((l) => l, (r) => r);
  }
}
