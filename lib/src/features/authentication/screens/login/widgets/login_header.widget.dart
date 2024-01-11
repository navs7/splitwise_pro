import 'package:flutter/material.dart';
import 'package:splitwise_pro/src/constants/images_strings.dart';
import 'package:splitwise_pro/src/constants/sizes.dart';
import 'package:splitwise_pro/src/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(
              image: const AssetImage(myWelcomeImage),
              height: size.height * 0.2,
            ),
          ],
        ),
        const SizedBox(height: myDefaultSize-20),
        Text(myLoginTitle,
            style: Theme.of(context).textTheme.titleLarge),
        Text(myLoginSubtitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}