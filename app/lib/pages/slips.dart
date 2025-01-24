import 'package:app/common/Constants/custom_color.dart';
import 'package:app/pages/approved_slips.dart';
import 'package:app/pages/denied_slips.dart';
import 'package:flutter/material.dart';

class Slips extends StatefulWidget {
  const Slips({super.key});

  @override
  State<Slips> createState() => _SlipsState();
}

class _SlipsState extends State<Slips> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColor().primary_color,
          title: Text("Slipless SXC"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              text: "Approved Slips",
            ),
            Tab(
              text: "Denied Slips",
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            ApprovedSlips(),
            DeniedSlips(),
          ],
        ),
      ),
    );
  }
}
