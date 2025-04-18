import '../../../core/class/crud.dart';
import '../../../linkApi.dart';

class TestData {
  Crud crud;
  TestData(this.crud);

  getData() async {
    var response = await crud.postData(LinkApi.getDa, {});
    return response.fold((l) => l, (r) => r);
  }
}
