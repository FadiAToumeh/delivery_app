import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/registration/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 2),
      () => Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => WelcomePage())),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/logo_background.png') , fit: .cover),
          color: backgroundColor,
        ),
        child: Center(
          child: Image.asset('assets/logo.png' , width: 218.w, height: 185.h,),
        ),
      ),
    );
  }
}
