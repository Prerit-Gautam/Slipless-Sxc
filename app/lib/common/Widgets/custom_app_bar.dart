import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  String text;
  CustomAppBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      width: _screenSize.width,
      height: _screenSize.height * 0.12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/logo.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("$text"),
          )
        ],
      ),
    );
  }
}
