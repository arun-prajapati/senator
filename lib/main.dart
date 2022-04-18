import 'package:flutter/material.dart';
import 'package:senator/screens/home_page/home_page.dart';
import 'package:senator/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Senator International",
    home: const SplashScreen(),
    routes: {
      HomePage.route:(context)=>const HomePage()
    },);
  }
}

