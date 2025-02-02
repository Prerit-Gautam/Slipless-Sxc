import 'dart:async';

import 'package:app/common/Constants/custom_color.dart';
import 'package:app/common/Constants/custom_images.dart';
import 'package:app/common/Widgets/custom_app_bar.dart';
import 'package:app/common/Widgets/custom_button.dart';
import 'package:app/common/Widgets/custom_input_field_form.dart';
import 'package:app/services/pushSlip.dart';
import 'package:date_picker_plus/date_picker_plus.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateSlip extends StatefulWidget {
  const CreateSlip({super.key});

  @override
  State<CreateSlip> createState() => _CreateSlipState();
}

class _CreateSlipState extends State<CreateSlip> {
  String selectedValue = "Returning";

  TextEditingController nameController = TextEditingController();
  TextEditingController classController = TextEditingController();
  TextEditingController rollNoController = TextEditingController();
  TextEditingController doeController = TextEditingController();
  TextEditingController reasonController = TextEditingController();
  TextEditingController remarks_parent = TextEditingController();

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
                    Expanded(
                        child: CustomInputFieldForm(
                      controller: nameController,
                    ))
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
                    Expanded(
                        child: CustomInputFieldForm(
                      controller: classController,
                    ))
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
                    Expanded(
                        child: CustomInputFieldForm(
                      controller: rollNoController,
                    ))
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 120,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Date",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: TextField(
                          controller: doeController,
                          decoration: InputDecoration(
                            labelText: "Date",
                            filled: true,
                            fillColor: Colors.grey[300],
                            prefixIcon: Icon(Icons.calendar_today),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                          readOnly: true,
                          onTap: () {
                            _selectDate();
                          },
                        ),
                      ),
                    )
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
                    Expanded(
                        child: CustomInputFieldForm(
                      controller: reasonController,
                    ))
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
                    Expanded(
                        child: CustomInputFieldForm(
                      controller: remarks_parent,
                    ))
                  ],
                ),
                RadioListTile(
                    value: "Returning",
                    groupValue: selectedValue,
                    title: Text("Returning"),
                    onChanged: (e) {
                      selectedValue = e!;
                      setState(() {});
                    }),
                RadioListTile(
                    value: "Not returning",
                    groupValue: selectedValue,
                    title: Text("Not Returning"),
                    onChanged: (e) {
                      selectedValue = e!;
                      setState(() {});
                    }),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomButton(
                          title: "Submit",
                          callback: () {
                            String name = nameController.text.toString();
                            String class_of_student =
                                classController.text.toString();
                            String rollno = rollNoController.text.toString();
                            String doe = doeController.text.toString();
                            String reason = reasonController.text.toString();
                            String remarks = remarks_parent.text.toString();

                            if (name.isEmpty ||
                                class_of_student.isEmpty ||
                                doe.isEmpty ||
                                rollno.isEmpty ||
                                reason.isEmpty ||
                                remarks.isEmpty) {
                              showSnackBar("Field(s) cannot be empty", context);
                            } else {
                              var x = showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (c) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child:
                                            Text("Pushing Data to Databse...."),
                                      )
                                    ],
                                  );
                                },
                              );
                              Pushslip pushslip = Pushslip(
                                  name: name,
                                  class_of_student: class_of_student,
                                  rollno: rollno,
                                  doe: doe,
                                  reason: reason,
                                  remarks: remarks,
                                  state: selectedValue,
                                  context: context);
                              pushslip.pushRequest();
                              Navigator.pop(context);
                            }
                          }),
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

  void showSnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context)
      ..showSnackBar(
        SnackBar(
          content: Text("$message"),
        ),
      );
  }

  Future<void> _selectDate() async {
    DateTime? picker = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2026),
    );

    if (picker != null) {
      setState(() {
        doeController.text = picker.toString().split(" ")[0];
      });
    }
  }
}
