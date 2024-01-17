import "package:ai_assistant/helper/global.dart";
import "package:ai_assistant/screens/home_screen.dart";
import "package:flutter/material.dart";

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
      body: Center(
          child: Card(
        color: Colors.blue,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: EdgeInsets.all(mediaQuery.width * .05),
          child: Image.asset(
            "assets/images/logo.png",
            width: mediaQuery.width * .4,
          ),
        ),
      )),
    );
  }
}
