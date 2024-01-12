import 'package:flutter/material.dart';
import 'package:splitwise_pro/src/constants/sizes.dart';
import 'package:splitwise_pro/src/constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: myFormHeight - 10),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              label: Text(myFullName),
              prefixIcon: Icon(Icons.person_outline_rounded),
            ),
          ),
          const SizedBox(
            height: myFormHeight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text(myEmail),
              prefixIcon: Icon(Icons.email_outlined),
            ),
          ),
          const SizedBox(
            height: myFormHeight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text(myPhoneNo),
              prefixIcon: Icon(Icons.phone_android_sharp),
            ),
          ),
          const SizedBox(
            height: myFormHeight - 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              label: Text(myPassword),
              prefixIcon: Icon(Icons.fingerprint_sharp),
            ),
          ),
          const SizedBox(
            height: myFormHeight - 20,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(mySignup.toUpperCase()),
            ),
          ),
        ],
      )),
    );
  }
}