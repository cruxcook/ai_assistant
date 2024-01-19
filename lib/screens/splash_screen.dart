import "package:ai_assistant/helper/global.dart";
import "package:ai_assistant/screens/home_screen.dart";
import "package:flutter/material.dart";

import "../widgets/custom_loading.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Wait a bit on Splash screen & move to next screen
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // Initialize device size
    mediaQuery = MediaQuery.sizeOf(context);

    return Scaffold(
      // Body
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.all(mediaQuery.width * .05),
                child: Image.asset(
                  "assets/images/logo.png",
                  width: mediaQuery.width * .4,
                ),
              ),
            ),
            const Spacer(), // Add space
            const CustomLoading(),
            const Spacer() // Add space
          ],
        ),
      ),
    );
  }
}
