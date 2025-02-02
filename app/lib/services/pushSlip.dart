import 'dart:collection';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Pushslip {
  String name;
  String class_of_student;
  String rollno;
  String doe;
  String reason;
  String remarks;
  String state;

  BuildContext context;

  Pushslip({
    required this.name,
    required this.class_of_student,
    required this.rollno,
    required this.doe,
    required this.reason,
    required this.remarks,
    required this.state,
    required this.context,
  });

  DatabaseReference dbref = FirebaseDatabase.instance.ref("Slips");

  void pushRequest() async {
    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(now);

    String nextUid = "";

    Map<String, Object?> toPush = {};

    final snapshot = await dbref.child(doe).child("nextUid").get();
    if (snapshot.exists) {
      nextUid = snapshot.value.toString();
      var inner = {};
      dbref.child(doe).onValue.listen((DatabaseEvent event) async {
        for (var x in event.snapshot.children) {
          if (x.key != "nextUid") {
            final innerSnapshot =
                await dbref.child(doe).child(x.key.toString()).get();
            inner.addAll(innerSnapshot.value as Map);
            inner.clear();
          }
        }
      });
    } else {
      nextUid = "0";
    }
    Map<dynamic, dynamic> data = {
      "applied_by": name,
      "class": class_of_student,
      "rollno": rollno,
      "date_of_entry": formattedDate,
      "reason": reason,
      "remarks_parent": remarks,
      "returning": (state == "Returning") ? "yes" : "no",
    };
    nextUid = (int.parse(nextUid) + 1).toString();

    toPush.addAll({
      "nextUid": nextUid,
      (int.parse(nextUid) - 1).toString(): data,
    });
    print(toPush);
    dbref.child(doe).update(toPush);

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Slip request was placed sucessfully")));
  }
}
