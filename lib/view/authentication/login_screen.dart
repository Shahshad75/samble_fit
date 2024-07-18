import 'package:fitcheck/widget/auth_button.dart';
import 'package:fitcheck/widget/common/custom_button.dart';
import 'package:fitcheck/widget/common/custom_textfield.dart';
import 'package:fitcheck/widget/common/logotext.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          const Positioned(
              top: 0,
              child: Image(image: AssetImage("assets/images/background.png"))),
          SizedBox(
            width: double.maxFinite,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 80.0, bottom: 15),
                    child: LogoText(title: "Login"),
                  ),
                  const CustomTextfield(
                      hintText: "Email Address", icon: Icons.mail),
                  const CustomTextfield(hintText: "Password", icon: Icons.lock),
                  //
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forget password?",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  //
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 19),
                    child: CustomButton(
                      onTap: () {},
                      text: "Login",
                      color: Colors.black,
                      textColor: Colors.white,
                      borderColor: Colors.black,
                      radius: 8,
                      size: 48,
                    ),
                  ),
                  const Spacer(),
                  AuthButtom(
                      onTap: () {},
                      logoImage: "assets/images/googlelogo.jpeg",
                      logoName: "Continue with Google"),

                  AuthButtom(
                      onTap: () {},
                      logoImage: "assets/images/apple.png",
                      logoName: "Continue with Apple"),

                  const Padding(
                    padding: EdgeInsets.only(top: 8.0, bottom: 50),
                    child: Text(
                      "Already have an account? Login",
                      style: TextStyle(fontSize: 13.9),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
