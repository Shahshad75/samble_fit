import 'package:flutter/material.dart';

class AuthButtom extends StatelessWidget {
  const AuthButtom(
      {super.key,
      required this.onTap,
      required this.logoImage,
      required this.logoName});
  final void Function()? onTap;
  final String logoImage;
  final String logoName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 13,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffF9F9F9),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                logoImage,
                height: 24.0,
              ),
              const SizedBox(width: 8.0),
              Text(
                logoName,
                style: const TextStyle(
                  fontFamily: "BalsamiqSans",
                  color: Colors.black,
                  fontSize: 14.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
