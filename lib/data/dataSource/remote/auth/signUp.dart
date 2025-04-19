import '../../../../core/class/crud.dart';
import '../../../../linkApi.dart';

class SignupData {
  Crud crud;

  SignupData(this.crud);

  postData(String username, String email, String password, String phone) async {
    var response = await crud.postData(LinkApi.signUp, {
      "username": username,
      "email": email,
      "password": password,
      "phone": phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}
