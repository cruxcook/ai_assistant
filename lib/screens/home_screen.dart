import "package:ai_assistant/helper/global.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  @override
  Widget build(BuildContext context) {
    // Initialize device size
    mediaQuery = MediaQuery.sizeOf(context);

    return const Scaffold(
      // Body
      body: Center(child: Text("Welcome to Homescreen")),
    );
  }
}
