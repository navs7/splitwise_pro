import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitwise_pro/src/constants/colors.dart';
import 'package:splitwise_pro/src/constants/images_strings.dart';
import 'package:splitwise_pro/src/constants/sizes.dart';
import 'package:splitwise_pro/src/constants/text_strings.dart';

class MyWelcomeScreen extends StatelessWidget {
  const MyWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor: tPrimaryColor,
      body: Container(
        padding: const EdgeInsets.all(myDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: const AssetImage(myWelcomeImage), height: height * 0.5),
            Column(
              children: [
                Text(
                  myWelcomeTitle,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  myWelcomeSubtitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: (){}, 
                    
                    child: const Text("LOGIN"),
                    ),
                ),
                const SizedBox(width: 10.0,),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){},
                    
                    child: const Text("SIGNUP"),
                    ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
