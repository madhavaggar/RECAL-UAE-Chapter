import 'package:recaluae/Constant/utils.dart';
import 'package:recaluae/Screen/volunteer.dart';

import '../Constant/Constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Constant/Card.dart';
import '../Constant/color_shades.dart' as color_shades;
import '../UserAuth/Login.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:page_transition/page_transition.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> events = [
    "Social",
    "Events",
    "Mentor Support",
    "Employment",
  ];


  @override
  Widget build(BuildContext context) {
    final screeSize = MediaQuery.of(context).size;
    UIUtills()
        .updateScreenDimesion(width: screeSize.width, height: screeSize.height);
    return Stack(fit: StackFit.expand, children: <Widget>[
      Stack(fit: StackFit.expand, children: [
        Container(
          color: Colors.white,
        ),
      ]),
      Stack(children: [
        ClipPath(
          child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/admin.jpeg"),
                    fit: BoxFit.cover),
              )),
          clipper: Header(),
        ),
      ]),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.5),
          actions: <Widget>[
            IconButton(
              icon: Container(
                child: SvgPicture.asset(
                  "assets/icons/Logout.svg",
                  color: Colors.white70,
                ),
                height: 20,
              ),
              onPressed: () {},
            )
          ],
          title: Text('Home'),
          elevation: 0.0,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.black,
          buttonBackgroundColor: color_shades.color2,
          height: 45,
          items: <Widget>[
            Icon(
              Icons.account_balance,
              size: 30,
              color: color_shades.color3,
            ),
//     SvgPicture.asset("assets/icons/ac.svg",color:color_shades.color4,height: 30,),
            Icon(
              Icons.assistant_photo,
              size: 30,
              color: color_shades.color3,
            ),
            Icon(
              Icons.home,
              size: 30,
              color: color_shades.color3,
            ),
            Icon(
              Icons.mail,
              size: 30,
              color: color_shades.color3,
            ),
            Icon(
              Icons.person,
              size: 32,
              color: color_shades.color3,
            ),
          ],
          animationCurve: Curves.bounceInOut,
          animationDuration: Duration(milliseconds: 200),
          index: 2,
          onTap: (index) {},
        ),
        body: OrientationBuilder(builder: (context, orientation) {
          return Container(
            margin: EdgeInsets.only(top:UIUtills().getProportionalHeight(height: 130.0),),
            child: GridView(
              //crossAxisCount: orientation==Orientation.portrait?2:3,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              children: events.map((title) {
                return Container(
                  decoration: BoxDecoration(),
                  child: GestureDetector(
                    onTap: () {
                      //Navigator.pop(context,true);
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Volunteer()));
                    },
                    child: Card(
                      margin: EdgeInsets.all(25.0),
                      color: Colors.white.withOpacity(0.8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 0.3,
                      child: Card_title(title),
                    ),
                  ),
                );
              }).toList(),
            ),
          );
        }),
      )
    ]);
  }
}
class Header extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0.0, size.height - 20.0);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2.25, size.height - 30);
    path.quadraticBezierTo(size.width - (size.width / 3.25), size.height - 65,
        size.width, size.height - 40);
    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
