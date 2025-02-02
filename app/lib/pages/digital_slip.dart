import 'package:app/common/Constants/custom_color.dart';
import 'package:app/common/Constants/custom_images.dart';
import 'package:flutter/material.dart';

class DigitalSlip extends StatefulWidget {
  const DigitalSlip({super.key});

  @override
  State<DigitalSlip> createState() => _DigitalSlipState();
}

class _DigitalSlipState extends State<DigitalSlip> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    String name = "Prerit Gautam";
    String date = "2081-10-64";
    String returning = "Yes";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor().primary_color,
      ),
      backgroundColor: CustomColor().primary_color,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          height: _size.height * 0.6,
          width: _size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: CustomImages().college_logo,
              ),
              Container(
                width: _size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "St. Xavier's College",
                        style: textTheme.headlineSmall,
                      ),
                    ),
                    Text("E-Slip"),
                    SizedBox(
                      height: _size.height * 0.1,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          "Applied By:",
                          textAlign: TextAlign.center,
                        )),
                        Expanded(
                            child: Text(
                          "$name",
                          textAlign: TextAlign.center,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: _size.height * 0.05,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          "Date:",
                          textAlign: TextAlign.center,
                        )),
                        Expanded(
                          child: Text(
                            "$date",
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: _size.height * 0.05,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          "Returning:",
                          textAlign: TextAlign.center,
                        )),
                        Expanded(
                          child: Text(
                            "$returning",
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
