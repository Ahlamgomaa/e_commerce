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
    pageController.animateToPage(
      currentpage,
      duration: Duration(milliseconds: 150),
      curve: Curves.easeInOut,
    );
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
