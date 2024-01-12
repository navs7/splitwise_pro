import 'package:flutter/material.dart';
import 'package:splitwise_pro/src/constants/sizes.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.size,
    required this.image,
    required this.subtitle,
    required this.title,
  });

  final Size size;
  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
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
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        Text(subtitle, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
