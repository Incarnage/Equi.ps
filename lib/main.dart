import 'package:equips/authentications/Sign-in/sign_in_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myTheme,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => decideScreen()),
        );
      },
    );
  }

  Widget decideScreen() {
    //other logic when the database is set
    //return the splashpage
    return SignInPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Image.asset('assets/images/Logo.png')],
      ),
    );
  }
}

var myTheme = ThemeData(
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(),
  ),
  fontFamily: 'Inter',
  useMaterial3: true,
);
