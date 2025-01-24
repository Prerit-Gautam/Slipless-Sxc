import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      width: _screenSize.width,
      height: _screenSize.height * 0.12,
      child: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/logo.png"),
        ),
      ),
    );
  }
}
