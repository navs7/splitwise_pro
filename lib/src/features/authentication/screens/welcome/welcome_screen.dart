import 'package:flutter/material.dart';

class MyWelcomeScreen extends StatelessWidget {
  const MyWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 400,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hello World!!",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
