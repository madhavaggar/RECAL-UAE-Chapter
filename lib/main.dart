import 'dart:async';

import './Constant/Constant.dart';
import './Screen/HomePage.dart';
import './Screen/ImageSplashScreen.dart';
import 'package:flutter/material.dart';
import './UserAuth/Login.dart';

Future main() async {
  runApp(new MaterialApp(
    title: 'FluterSplashDemo',
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      primarySwatch: Colors.red,
    ),
    home: new ImageSplashScreen(),
    routes: <String, WidgetBuilder>{
      HOME_SCREEN: (BuildContext context) => new HomeScreen(),
      IMAGE_SPLASH: (BuildContext context) => new ImageSplashScreen(),
      LOGIN_SCREEN: (BuildContext context) => new Login(),
    }
  ));
}

