import 'dart:async';

import 'package:uae_recal_app/Constant/Constant.dart';
import 'package:uae_recal_app/Screen/HomePage.dart';
import 'package:uae_recal_app/Screen/ImageSplashScreen.dart';
import 'package:flutter/material.dart';

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
      IMAGE_SPLASH: (BuildContext context) => new ImageSplashScreen()
    },
  ));
}

