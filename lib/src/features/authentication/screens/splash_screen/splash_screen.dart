import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitwise_pro/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:splitwise_pro/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:splitwise_pro/src/constants/colors.dart';
import 'package:splitwise_pro/src/constants/images_strings.dart';
import 'package:splitwise_pro/src/constants/sizes.dart';
import 'package:splitwise_pro/src/constants/text_strings.dart';
import 'package:splitwise_pro/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          MyFadeInAnimation(
            durationInMs: 1600,
            animate: MyAnimatePosition(
              topAfter: -80,
              topBefore: -100,
              leftAfter: -50,
              leftBefore: -100,
            ),
            child: const Image(image: AssetImage(mySplashTopIcon)),
          ),
          MyFadeInAnimation(
            durationInMs: 1600,
            animate: MyAnimatePosition(
              topAfter: 100,
              topBefore: 0,
              leftAfter: myDefaultSize,
              leftBefore: -80,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  myAppName,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  myAppTagLine,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          MyFadeInAnimation(
            durationInMs: 1600,
            animate: MyAnimatePosition(
              bottomAfter: 220,
              bottomBefore: 0,
            ),
            child: const Image(image: AssetImage(mySplashImage)),
          ),
          MyFadeInAnimation(
            durationInMs: 1600,
            animate: MyAnimatePosition(
              bottomAfter: 40,
              bottomBefore: 0,
              rightAfter: myDefaultSize,
              rightBefore: 0,
            ),
            child: Container(
              width: mySplashContainerSize,
              height: mySplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
