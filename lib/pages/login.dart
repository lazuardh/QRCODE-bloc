import 'package:flutter/material.dart';
import 'package:qrcode_bloc/utils/color.dart';
import 'package:qrcode_bloc/utils/text_styles.dart';

import 'widgets/build_container_text_input.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/logo/logo.png",
                width: 70,
                height: 80,
              ),
              const SizedBox(
                height: 20,
              ),
              Text.rich(
                TextSpan(
                    text: "Welcome Back 👋 \nto ",
                    style: heading1(dark, semibold),
                    children: [
                      TextSpan(
                        text: "QR-CODE APPS",
                        style: heading1(primaryColor200, semibold),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Hello there, login to continue",
                style: text2(lightColor, regular),
              ),
              const SizedBox(
                height: 10,
              ),
              BuildContainerTextInput(
                child: TextField(
                  maxLines: 1,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Email Address",
                    labelStyle: text1(primaryColor200, regular),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              BuildContainerTextInput(
                child: TextField(
                  maxLines: 1,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Password",
                    labelStyle: text1(primaryColor200, regular),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.visibility_off)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: text3(primaryColor200, regular),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: primaryColor100,
                  borderRadius: BorderRadiusDirectional.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: text2(
                      whiteColor,
                      regular,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
