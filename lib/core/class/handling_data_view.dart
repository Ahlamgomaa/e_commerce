import 'package:e_commerce_app/core/class/statusRequest.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constant/imageassets.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;

  const HandlingDataView({
    super.key,
    required this.statusRequest,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
          child: Lottie.asset(Imageassets.loading, height: 500, width: 500),
        )
        : statusRequest == StatusRequest.offlineFailure
        ? Center(
          child: Lottie.asset(Imageassets.offline, height: 500, width: 500),
        )
        : statusRequest == StatusRequest.serverFailure
        ? Center(
          child: Lottie.asset(Imageassets.server, height: 500, width: 500),
        )
        : statusRequest == StatusRequest.failure
        ? Center(
          child: Lottie.asset(
            Imageassets.noData,
            height: 500,
            width: 500,
            repeat: false,
          ),
        )
        : widget;
  }
}
