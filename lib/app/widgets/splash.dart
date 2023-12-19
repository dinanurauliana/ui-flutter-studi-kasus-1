import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  double getWidth = Get.width;
  double getHeight = Get.height;

  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEC202B),
        body: Center(
          child: Container(
            width: getWidth * 0.5,
            height: getHeight * 0.5,
            child: Image.asset('assets/logo/logo.png'),
          ),
        ),
      ),
    );
  }
}
