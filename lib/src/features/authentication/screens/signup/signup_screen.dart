import 'package:flutter/material.dart';
import 'package:splitwise_pro/src/common_widgets/form/form_header_widget.dart';
import 'package:splitwise_pro/src/constants/images_strings.dart';
import 'package:splitwise_pro/src/constants/sizes.dart';
import 'package:splitwise_pro/src/constants/text_strings.dart';
import 'package:splitwise_pro/src/features/authentication/screens/signup/widgets/signup_footer_widget.dart';
import 'package:splitwise_pro/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(myDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  size: size,
                  image: myWelcomeImage,
                  subtitle: mySignupSubtitle,
                  title: mySignupTitle,
                ),
                const SignUpFormWidget(),
                const SignupFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


