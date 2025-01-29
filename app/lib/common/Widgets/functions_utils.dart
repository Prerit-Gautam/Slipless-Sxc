import 'package:flutter/material.dart';

class FunctionsUtilss extends StatefulWidget {
  const FunctionsUtilss({super.key});

  @override
  State<FunctionsUtilss> createState() => _FunctionsUtilssState();
}

class _FunctionsUtilssState extends State<FunctionsUtilss> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(19)),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/eye.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/edit.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/delete.png"),
          ),
        ],
      ),
    );
  }
}
