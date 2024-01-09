import 'dart:ui';

import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:splitwise_pro/src/constants/colors.dart';
import 'package:splitwise_pro/src/constants/images_strings.dart';
import 'package:splitwise_pro/src/constants/text_strings.dart';
import 'package:splitwise_pro/src/features/authentication/models/on_boarding_model.dart';
import 'package:splitwise_pro/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingWidget(
        model: OnBoardingModel(
      image: myOnBoardingImage1,
      title: myOnBoardingTitle,
      subtitle: myOnBoardingSubtitle,
      counterText: myOnBoardingCounter,
      bgcolor: tOnBoardingPage1Color,
    )),
    OnBoardingWidget(
        model: OnBoardingModel(
      image: myOnBoardingImage2,
      title: myOnBoardingTitle2,
      subtitle: myOnBoardingSubtitle2,
      counterText: myOnBoardingCounter2,
      bgcolor: tOnBoardingPage2Color,
    )),
    OnBoardingWidget(
        model: OnBoardingModel(
      image: myOnBoardingImage3,
      title: myOnBoardingTitle3,
      subtitle: myOnBoardingSubtitle3,
      counterText: myOnBoardingCounter3,
      bgcolor: tOnBoardingPage3Color,
    )),
  ];

  onPageChangedCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  skip()=>controller.jumpToPage(page: 2);

  animateToNextSlide(){
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
}
