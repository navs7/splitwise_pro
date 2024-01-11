import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitwise_pro/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:splitwise_pro/src/constants/images_strings.dart';
import 'package:splitwise_pro/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';

class MyFadeInAnimation extends StatelessWidget {
  MyFadeInAnimation({
    super.key,
    required this.durationInMs,
    this.animate,
    required this.child,
  });

  final controller = Get.put(FadeInAnimationController());
  final int durationInMs;
  final MyAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: const Duration(milliseconds: 1600),
        top: controller.animate.value ? animate!.topAfter : animate!.topBefore, //-80 : -100,
        left: controller.animate.value ? animate!.leftAfter : animate!.leftBefore,//-50 : -100,
        right: controller.animate.value ? animate!.rightAfter : animate!.rightBefore,
        bottom: controller.animate.value ? animate!.bottomAfter : animate!.bottomBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
          opacity: controller.animate.value ? 1 : 0,
          child: child,//const Image(image: AssetImage(mySplashTopIcon)),
        ),
      ),
    );
  }
}
