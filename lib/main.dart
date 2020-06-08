import 'dart:async';

import 'package:flutter/services.dart';

import 'Profile/ProfileScreen.dart';

import './Constant/Constant.dart';
import './Screen/HomePage.dart';
import './Screen/ImageSplashScreen.dart';
import 'package:flutter/material.dart';
import './UserAuth/Login.dart';

void main()  {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_)  {
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
  });


}

