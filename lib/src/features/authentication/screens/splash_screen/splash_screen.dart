import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitwise_pro/src/constants/colors.dart';
import 'package:splitwise_pro/src/constants/images_strings.dart';
import 'package:splitwise_pro/src/constants/sizes.dart';
import 'package:splitwise_pro/src/constants/text_strings.dart';
import 'package:splitwise_pro/src/features/authentication/controllers/splash_screen_controller.dart';
// import 'package:splitwise_pro/src/utils/theme/theme.dart';

class MySplashScreen extends StatelessWidget {
  MySplashScreen({Key? key}) : super(key: key);
  final splashController = Get.put(MySplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: splashController.animate.value ? -50 : -100,
                left: splashController.animate.value ? -50 : -100,
                child: const Image(image: AssetImage(mySplashTopIcon))),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 80 : 0,
              left: splashController.animate.value ? myDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 :0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      myAppName,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      myAppTagLine,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                bottom: splashController.animate.value ? 220 : 0,
                child: Image(image: AssetImage(mySplashImage))),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: splashController.animate.value ? 40 : 0,
              right: myDefaultSize,
              child: Container(
                width: mySplashContainerSize,
                height: mySplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
