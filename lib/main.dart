import 'dart:async';

import 'Profile/ProfileScreen.dart';

import './Constant/Constant.dart';
import './Screen/HomePage.dart';
import './Screen/ImageSplashScreen.dart';
import 'package:flutter/material.dart';
import './UserAuth/Login.dart';

Future main() async {
  runApp(new MaterialApp(
    title: 'Recal UAE',
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: ImageSplashScreen(),
    routes: <String, WidgetBuilder> {
      LOGIN_SCREEN: (BuildContext context) => new Login(),
      HOME_SCREEN: (BuildContext context) => new HomePage(),
      IMAGE_SPLASH: (BuildContext context) => new ImageSplashScreen(),
      PROFILE_SCREEN: (BuildContext context) => new ProfileScreen(),
    }
  ));
}

