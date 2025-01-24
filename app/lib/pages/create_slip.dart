import 'package:app/common/Constants/custom_color.dart';
import 'package:flutter/material.dart';

class CreateSlip extends StatefulWidget {
  const CreateSlip({super.key});

  @override
  State<CreateSlip> createState() => _CreateSlipState();
}

class _CreateSlipState extends State<CreateSlip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor().primary_color,
    );
  }
}
