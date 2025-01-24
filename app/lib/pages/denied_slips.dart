import 'package:app/common/Constants/custom_color.dart';
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
    );
  }
}
