import 'package:app/common/Constants/custom_color.dart';
import 'package:app/common/Widgets/functions_utils.dart';
import 'package:flutter/material.dart';

class CustomSlip extends StatefulWidget {
  Image icon;
  String date;
  String reason;
  CustomSlip(
      {super.key,
      required this.icon,
      required this.date,
      required this.reason});

  @override
  State<CustomSlip> createState() => _CustomSlipState();
}

class _CustomSlipState extends State<CustomSlip> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: CustomColor().secondary_color,
          borderRadius: BorderRadius.circular(1)),
      width: _size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              child: Text(
                "Date : ${widget.date}",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              width: 100,
              child: Text(
                "Reason : ${widget.reason}",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                widget.icon,
                FunctionsUtilss(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
