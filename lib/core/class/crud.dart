import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/class/statusRequest.dart';
import 'package:e_commerce_app/core/function/check_internet.dart';

class Crud {
  final Dio dio = Dio();

  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await dio.post(linkUrl, data: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.data);

          return Right(responseBody);
        } else {
          return Left(StatusRequest.serverFailure);
        }
      } else {
        return Left(StatusRequest.offlineFailure);
      }
    } catch (_) {
      return Left(StatusRequest.serverFailure);
    }
  }
}
