import 'package:Cloudgrain_parents/screens/login/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:Cloudgrain_parents/screens/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //从右到左划入(iOS风格push)
        //platform: TargetPlatform.iOS,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
    );
  }
}
