import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qrcode_bloc/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:qrcode_bloc/features/auth/presentation/routes/route_name.dart';
import 'package:qrcode_bloc/features/auth/presentation/utils/color.dart';
import 'package:qrcode_bloc/features/auth/presentation/utils/text_styles.dart';

import '../widgets/build_button.dart';
import '../widgets/build_container_text_input.dart';

class LoginPages extends StatelessWidget {
  LoginPages({super.key});

  final TextEditingController emailC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();

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
                  controller: emailC,
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
                  controller: passwordC,
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
              BuildContainerButton(
                onTap: () {
                  context
                      .read<AuthBloc>()
                      .add(AuthEventLogin(emailC.text, passwordC.text));
                },
                child: BlocConsumer<AuthBloc, AuthState>(
                  listener: (BuildContext context, AuthState state) {
                    if (state is AuthStateLogin) {
                      context.goNamed(Routes.home);
                    }
                  },
                  builder: (context, state) {
                    if (state is AuthStateLoading) {
                      return Text(
                        "Loading",
                        style: text2(
                          whiteColor,
                          regular,
                        ),
                      );
                    }
                    return Text(
                      "Login",
                      style: text2(
                        whiteColor,
                        regular,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
