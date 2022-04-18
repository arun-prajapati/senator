import 'dart:async';

import 'package:flutter/material.dart';
import 'package:senator/screens/home_page/home_page.dart';
import 'package:senator/utils/my_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    toHomePage();
    super.initState();
  }

  toHomePage(){
    Timer(Duration(seconds: 2),(){Navigator.of(context).pushNamedAndRemoveUntil(HomePage.route, (route) => false);});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(MyImages.logo,width: MediaQuery.of(context).size.width*.7,),
      ),
    );
  }
}
