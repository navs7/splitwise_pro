import 'package:flutter/material.dart';
import 'package:splitwise_pro/src/constants/sizes.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.image,
    required this.subtitle,
    required this.title,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.imageBetweenHeight,
    this.imageColor,
    this.imageHeight = 0.2,
  });

  final String image, title, subtitle;
  final Color? imageColor;
  final double imageHeight;
  final double? imageBetweenHeight;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(
              image: AssetImage(image),
              height: size.height * 0.2,
            ),
          ],
        ),
        const SizedBox(height: myDefaultSize - 20),
        Text(title, style: Theme.of(context).textTheme.headlineLarge),
        Text(subtitle, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
