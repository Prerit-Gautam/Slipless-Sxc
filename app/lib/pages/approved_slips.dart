import 'package:app/common/Constants/custom_color.dart';
import 'package:app/pages/denied_slips.dart';
import 'package:flutter/material.dart';

class ApprovedSlips extends StatefulWidget {
  const ApprovedSlips({super.key});

  @override
  State<ApprovedSlips> createState() => _ApprovedSlipsState();
}

class _ApprovedSlipsState extends State<ApprovedSlips> {
  @override
  Widget build(BuildContext context) {
    return Container(color: CustomColor().primary_color);
  }
}
