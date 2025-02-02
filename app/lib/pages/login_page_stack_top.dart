import 'package:app/common/Constants/custom_color.dart';
import 'package:app/common/Widgets/custom_app_bar.dart';
import 'package:app/common/Widgets/custom_button.dart';
import 'package:app/common/Widgets/custom_text_field.dart';
import 'package:app/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPageStackTop extends StatelessWidget {
  const LoginPageStackTop({super.key});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();

    return Column(
      children: [
        CustomAppBar(
          text: "",
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          height: _screenSize.height * 0.08,
          child: Align(
            alignment: Alignment.topLeft,
            child: Image.asset("assets/images/slip_icon.png"),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: CustomColor().secondary_color.withOpacity(0.25),
          ),
          child: Column(
            spacing: 20,
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      leading: Icon(Icons.email),
                      hint: "Enter Email",
                      obs: false,
                      controller: _emailController,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      leading: Icon(Icons.lock),
                      hint: "Enter Password",
                      obs: true,
                      controller: _passwordController,
                    ),
                  ),
                ],
              ),
              CustomButton(
                title: "Login",
                callback: () {
                  String _email = _emailController.text;
                  String _password = _passwordController.text;
                  Auth(context).signIn(_email, _password);
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
