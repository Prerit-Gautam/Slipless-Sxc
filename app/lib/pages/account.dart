import 'package:app/common/Constants/custom_color.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  int _issuedSlipsNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor().primary_color,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image.network(
                      width: 200,
                      height: 200,
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROOTJ-mbTPHyoBoxv0wJN8xIGa1vU56pmbpA&s"),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Number of Slips issued",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "$_issuedSlipsNumber",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Slip Leaderboard",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "View who has issued the most number of slips",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Meet the Team",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Know about the people who contributed to the development of this app",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
