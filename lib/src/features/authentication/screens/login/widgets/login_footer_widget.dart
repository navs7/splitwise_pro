import 'package:flutter/material.dart';
import 'package:splitwise_pro/src/constants/images_strings.dart';
import 'package:splitwise_pro/src/constants/sizes.dart';
import 'package:splitwise_pro/src/constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(
          height: myFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: const Image(
                image: AssetImage(myGoogleLogo),
                width: 20.0,
              ),
              onPressed: () {},
              label: const Text(mySignInWithGoogle)),
        ),
        const SizedBox(
          height: myFormHeight - 30,
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
              text: myAlreadyHaveAccount,
              style: Theme.of(context).textTheme.bodyMedium,
              children: const[
                TextSpan(
                  text: mySignup,
                  style: TextStyle(color: Colors.blue)),
              ],
              ),
          ),
        ),
      ],
    );
  }
}
