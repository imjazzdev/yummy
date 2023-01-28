import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yummy/pages/about.dart';
import 'package:yummy/pages/food_prime_rib_roast.dart';
import 'package:yummy/pages/home.dart';
import 'package:yummy/pages/signin.dart';
import 'package:yummy/pages/signup.dart';
import 'package:yummy/pages/start.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      // home: StartPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const StartPage(),
        '/signup': (context) => const SignUp(),
        '/signin': (context) => const SignIn(),
        '/home': (context) => const HomePage(),
        '/primeribroast': (context) => const FoodPrimeRibRoast(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}
