import 'package:app/common/Constants/custom_color.dart';
import 'package:app/common/Constants/custom_images.dart';
import 'package:app/common/Widgets/custom_slip.dart';
import 'package:flutter/material.dart';

class DeniedSlips extends StatefulWidget {
  const DeniedSlips({super.key});

  @override
  State<DeniedSlips> createState() => _DeniedSlipsState();
}

class _DeniedSlipsState extends State<DeniedSlips> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor().primary_color,
      child: Column(
        children: [
          CustomSlip(
            icon: CustomImages().reject,
            date: "2081-10-24",
            reason:
                "Brother went to bring food but didnot return and I cannot leave this house on its own.",
          ),
        ],
      ),
    );
  }
}
