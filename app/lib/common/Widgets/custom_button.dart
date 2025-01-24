import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  void Function() callback;

  CustomButton({super.key, required this.title, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Material(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: callback,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "$title",
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
