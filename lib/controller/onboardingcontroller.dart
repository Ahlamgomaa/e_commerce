import 'package:e_commerce_app/core/constant/routeapp.dart';
import 'package:e_commerce_app/data/dataSource/static/static.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class Onboardingcontroller extends GetxController {
  next();
  onPageChanaged(int index);
}

class Onboardingcontrollerimp extends Onboardingcontroller {
  late PageController pageController;
  int currentpage = 0;
  @override
  next() {
    currentpage++;
    if (currentpage > onboardingList.length-1) {
      Get.offAllNamed(Routeapp.login);
    } else {
      pageController.animateToPage(
        currentpage,
        duration: Duration(milliseconds: 150),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  onPageChanaged(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
