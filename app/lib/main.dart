import 'package:app/pages/digital_slip.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';

User? user = null;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  user = FirebaseAuth.instance.currentUser;
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
        "/login": (context) => LoginPage(),
        "/digitalSlip": (context) => DigitalSlip()
      },
      theme: ThemeData(textTheme: GoogleFonts.mcLarenTextTheme()),
      home: (user != null) ? Home() : LoginPage(),
    );
  }
}
