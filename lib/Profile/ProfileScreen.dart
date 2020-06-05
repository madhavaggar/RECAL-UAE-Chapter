
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../Constant/ColorGlobal.dart';
import '../Constant/TextField.dart';
import 'package:badges/badges.dart';
import 'EditProfile.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _unfinished=2;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorGlobal.whiteColor,
          appBar: AppBar(
            backgroundColor: ColorGlobal.whiteColor,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: ColorGlobal.textColor),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text('Profile',style: TextStyle(color: ColorGlobal.textColor),),
          ),
          body: SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 30,),
                    Center(
                      child: Hero(
                        tag: 'profile_pic',
                        child: GestureDetector(
                          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> PictureScreen()));},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            height: 160,
                            width: 160,
                            decoration: new BoxDecoration(
                              color: ColorGlobal.colorPrimaryDark,
                              image: new DecorationImage(
                                image: new AssetImage('assets/images/spiderlogo.png'),
                                fit: BoxFit.contain,
                              ),
                              border: Border.all(color: ColorGlobal.colorPrimaryDark, width: 2),
                              borderRadius:
                              new BorderRadius.all(const Radius.circular(80.0)),
                            ),
                          ),
                        ),
                      )
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                "Madhav Aggarwal",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 18,
                                  letterSpacing: 1,
                                  color: ColorGlobal.textColor.withOpacity(0.9),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Text(
                                "BTech CSE, 2022",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing: 1,
                                  color:
                                  ColorGlobal.textColor.withOpacity(0.6),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Badge(
                        badgeColor: Colors.red,
                        position: BadgePosition.bottomRight(bottom: 27, right: 5),
                        shape: BadgeShape.circle,
                        borderRadius: 5,
                        toAnimate: true,
                        badgeContent: Text('$_unfinished'),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.downToUp,
                                    duration: Duration(milliseconds: 400),
                                    child: EditProfile()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorGlobal.whiteColor,
                                border: Border.all(color: ColorGlobal.textColor),
                                borderRadius: BorderRadius.circular(5.0),
                            ),
                            alignment: Alignment.center,
                            child: Text("Edit Profile",
                                style: TextStyle(
                                    color: ColorGlobal.textColor, fontWeight: FontWeight.bold),
                            ),
                            height: 27.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


          ),
      )
      ),
    );
  }
}
// ignore: must_be_immutable
class PictureScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'profile_pic',
            child: Container(
              width: 300,
              height: 300,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: new BoxDecoration(
                color: ColorGlobal.colorPrimaryDark,
                image: new DecorationImage(
                  image: new AssetImage('assets/images/spiderlogo.png'),
                  fit: BoxFit.cover
                ),
                border: Border.all(color: ColorGlobal.colorPrimaryDark, width: 2),
                borderRadius:  new BorderRadius.all(const Radius.circular(150.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
