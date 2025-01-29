import 'package:app/common/Constants/custom_color.dart';
import 'package:app/common/Widgets/custom_app_bar.dart';
import 'package:app/pages/account.dart';
import 'package:app/pages/approved_slips.dart';
import 'package:app/pages/create_slip.dart';
import 'package:app/pages/denied_slips.dart';
import 'package:app/pages/slips.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  PageController _controller = PageController();
  List pages = [Slips(), CreateSlip(), Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          color: Colors.white,
        ),
        backgroundColor: CustomColor().primary_color,
        currentIndex: _selectedIndex,
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.notes),
            label: "Slips",
            activeIcon: Icon(
              Icons.notes,
              color: Colors.deepPurpleAccent,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            activeIcon: Icon(
              Icons.add,
              color: Colors.deepPurpleAccent,
            ),
            label: "Create Slip",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Icon(
              Icons.person,
              color: Colors.deepPurpleAccent,
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
