import 'package:flutter/material.dart';
import 'package:splitwise_pro/src/common_widgets/form/form_header_widget.dart';
import 'package:splitwise_pro/src/constants/images_strings.dart';
import 'package:splitwise_pro/src/constants/sizes.dart';
import 'package:splitwise_pro/src/constants/text_strings.dart';

class ForgotPasswordMailScreen extends StatelessWidget {
  const ForgotPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(myDefaultSize),
            child: Column(
              children: [
                const SizedBox(
                  height: myDefaultSize * 4,
                ),
                const FormHeaderWidget(
                    image: myForgotPasswordImage,
                    subtitle: myForgetMailSubTitle,
                    title: myForgetPassword),
                const SizedBox(
                  height: myFormHeight,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(myEmail),
                        hintText: myEmail,
                        prefixIcon: Icon(Icons.mail_outline_rounded),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("NEXT"))),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
