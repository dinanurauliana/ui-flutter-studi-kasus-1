import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_tsel/app/widgets/splash.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );

    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 5)),
      builder: (context, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          return GetMaterialApp(
            title: "Application",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        }
      },
    );
  }
}
