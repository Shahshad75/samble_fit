import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: Image(image: AssetImage("assets/images/app_logo.png")),
        ),
      )),
    );
  }
}
