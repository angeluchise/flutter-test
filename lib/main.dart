import 'package:flutter/material.dart';
import 'package:project_test/MainScreens/homeScreen.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Utils/AssetsImages.dart';
import 'Utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff2c2b50),
        primaryColorDark: Color(0xff050028),
        primaryColorLight: Color(0xff57547c),
        accentColor: Color(0xffedecee),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: Constants.TIME_SPLASH_SCREEN,
      navigateAfterSeconds: HomeScreen(),
      image: AssetsImages.ImageLogo(),
      backgroundColor: Colors.black,
      photoSize: 120,
      loaderColor: Theme.of(context).primaryColor,
      loadingText: Text(
        Constants.TEXT_SPLASH,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
