import 'package:app/common/Constants/custom_color.dart';
import 'package:app/common/Widgets/custom_app_bar.dart';
import 'package:app/common/Widgets/custom_button.dart';
import 'package:app/common/Widgets/custom_text_field.dart';
import 'package:app/pages/login_page_stack_top.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // returns the dimensions of screen
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColor().primary_color,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Container(
                height: _screenSize.height,
                width: _screenSize.width,
                child: Center(
                    child: Image.asset("assets/images/college_logo.png")),
              ),
              Positioned(
                bottom: _screenSize.height / 10,
                right: 0,
                child: Container(
                  width: _screenSize.width * 0.4,
                  height: _screenSize.height * 0.4,
                  decoration: BoxDecoration(
                    color: Color(0xFF3A15A8),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(_screenSize.width * 0.4),
                      bottomLeft: Radius.circular(_screenSize.height * 0.4),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: _screenSize.width * 0.4,
                  height: _screenSize.height * 0.4,
                  decoration: BoxDecoration(
                    color: Color(0xFF5E42AA),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(_screenSize.width * 0.4),
                      bottomRight: Radius.circular(_screenSize.height * 0.4),
                    ),
                  ),
                ),
              ),
              LoginPageStackTop(),
            ],
          ),
        ),
      ),
    );
  }
}
