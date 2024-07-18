import 'package:flutter/material.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: 80,
          height: 80,
          child: Image(image: AssetImage("assets/images/applogo.png")),
        ),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        )
      ],
    );
  }
}
