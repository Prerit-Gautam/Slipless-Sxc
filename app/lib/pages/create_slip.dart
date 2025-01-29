import 'package:app/common/Constants/custom_color.dart';
import 'package:app/common/Constants/custom_images.dart';
import 'package:app/common/Widgets/custom_app_bar.dart';
import 'package:app/common/Widgets/custom_button.dart';
import 'package:app/common/Widgets/custom_input_field_form.dart';

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CustomAppBar(
              text: "Profile Name",
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 120,
                      child: Center(
                        child: Text(
                          "NAME",
                        ),
                      ),
                    ),
                    Expanded(child: CustomInputFieldForm())
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 120,
                      child: Center(
                        child: Text(
                          "CLASS",
                        ),
                      ),
                    ),
                    Expanded(child: CustomInputFieldForm())
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 120,
                      child: Center(
                        child: Text(
                          "ROLL NO.",
                        ),
                      ),
                    ),
                    Expanded(child: CustomInputFieldForm())
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 120,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "DATE OF ENTRY",
                        ),
                      ),
                    ),
                    Expanded(child: CustomInputFieldForm())
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 120,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "REASON",
                        ),
                      ),
                    ),
                    Expanded(child: CustomInputFieldForm())
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 120,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "PARENT'S REMARKS",
                        ),
                      ),
                    ),
                    Expanded(child: CustomInputFieldForm())
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomButton(title: "Submit", callback: () => {}),
                      IconButton(
                        icon: CustomImages().delete,
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
