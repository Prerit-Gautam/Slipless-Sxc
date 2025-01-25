import 'package:app/pages/home.dart';
import 'package:app/pages/login_page.dart';
import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Account account = Account(client);
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => Home(),
        "/login": (context) => LoginPage()
      },
      theme: ThemeData(textTheme: GoogleFonts.mcLarenTextTheme()),
      home: LoginPage(),
    );
  }
}
