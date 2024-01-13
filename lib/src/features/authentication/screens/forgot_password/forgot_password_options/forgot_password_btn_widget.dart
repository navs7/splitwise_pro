import 'package:flutter/material.dart';
import 'package:splitwise_pro/src/constants/sizes.dart';

class ForgotPasswordBtnWidget extends StatelessWidget {
  const ForgotPasswordBtnWidget({
    super.key,
    required this.btnIcon,
    required this.subtile,
    required this.title,
    required this.myOnTap,
  });

  final IconData btnIcon;
  final String title, subtile;
  final VoidCallback myOnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myOnTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.grey.shade200,
        ),
        child: Row(children: [
          Icon(btnIcon, size: myDefaultSize*1.5),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                subtile,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
