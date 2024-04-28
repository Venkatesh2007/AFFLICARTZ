import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:test1/Sign.dart';
import 'package:test1/SignupPage.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignupPage()),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0, end: 1),
            duration:const Duration(seconds: 2),
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset('assets/images/Logo_yellow.png'),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
