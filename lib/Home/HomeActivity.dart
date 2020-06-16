import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Constant/ColorGlobal.dart';
import '../Constant/Constant.dart';

class HomeActivity extends StatefulWidget {
  @override
  _HomeActivityState createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  static List<String> _events = [
    "Social",
    "Events",
    "Mentor Support",
    "Employment",
  ];
  static List<String> _members = [
    "ASHEET AGARWAL",
    "MANOJ PANDEY",
    "NAVAL TAYDE",
    "LIMI SURESH",
    "UMESH AGARWAL",
    "ANAMITRA ROY",
    "GANGA KANDASWAMY",
  ];
  String _getLongestString() {
    var s = _members[0];
    for (int i = 1; i < 7; i++) {
      if (_members[i].length > s.length) s = _members[i];
    }
    print(s);
    return s;
  }

  static List<String> _roles = [
    "President",
    "Vice President",
    "Secretary",
    "Joint Secretary",
    "Treasurer",
    "Mentor 1",
    "Mentor 2",
  ];
  Size _textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final Size coreSize = _textSize(
        "Core Committee",
        TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: ColorGlobal.textColor));

    final socialSize = _textSize(
      "Social",
      TextStyle(
          fontFamily: 'Pacifico',
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: ColorGlobal.textColor),
    );
    final goSocialSize = _textSize(
      _getLongestString(),
      TextStyle(
        fontSize: 11,
        letterSpacing: 1,
        color: ColorGlobal.textColor,
        fontWeight: FontWeight.w700,
      ),
    );

    final alumniName = _textSize(
      "Go Social",
      TextStyle(
          fontFamily: 'Pacifico',
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: ColorGlobal.textColor.withOpacity(0.7)),
    );

    print(height -
        (0.325 * height +
            width / 5 +
            goSocialSize.height +
            socialSize.height +
            coreSize.height +
            10));
    print(0.4 * height);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorGlobal.whiteColor,
          title: Text(
            'Home',
            style: TextStyle(color: ColorGlobal.textColor),
          ),
        ),
        body: Stack(
          children: <Widget>[
            ClipRRect(
              child: Container(
                height: height * 0.05,
                color: ColorGlobal.blueColor,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(height * 0.05),
              child: Container(
                height: height * 0.40,
                color: ColorGlobal.blueColor,
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "RECAL UAE CHAPTER",
                        style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: ColorGlobal.whiteColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.1 * height, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Card(
                            child: Container(
                              padding: EdgeInsets.only(top: 10),
                              height: 0.1 * height,
                              width: 0.1 * height,
                              decoration: new BoxDecoration(
                                color: ColorGlobal.colorPrimaryDark,
                                image: new DecorationImage(
                                  image: new AssetImage(
                                      'assets/images/spiderlogo.png'),
                                  fit: BoxFit.contain,
                                ),
                                border: Border.all(
                                    color: ColorGlobal.colorPrimaryDark,
                                    width: 2),
                                borderRadius: new BorderRadius.all(
                                    Radius.circular(0.1 * height)),
                              ),
                            ),
                            elevation: 15,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    new BorderRadius.circular(width / 6)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Welcome back, ",
                                style: GoogleFonts.lato(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: ColorGlobal.whiteColor
                                        .withOpacity(0.9)),
                              ),
                              Text(
                                "MADHAV AGGARWAL",
                                style: GoogleFonts.lato(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: ColorGlobal.whiteColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: height * 0.325),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        child: Column(
                          children: <Widget>[
                            Card(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: width / 10,
                                child: SvgPicture.asset(
                                  'assets/icons/Social.svg',
                                  color: ColorGlobal.blueColor,
                                  height: width / 12,
                                  width: width / 12,
                                ),
                              ),
                              elevation: 20,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(width / 10)),
                            ),
                            Text(
                              "Social",
                              style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: ColorGlobal.textColor),
                            ),
                            Text(
                              "Go Social",
                              style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: ColorGlobal.textColor.withOpacity(0.7)),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                        onTap: () {
                          Navigator.pushNamed(context,SOCIAL_BUSINESS);
                        },
                      ),
                      GestureDetector(
                        child: Column(
                          children: <Widget>[
                            Card(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: width / 10,
                                child: SvgPicture.asset(
                                  'assets/icons/Employment.svg',
                                  color: ColorGlobal.blueColor,
                                  height: width / 10,
                                  width: width / 10,
                                ),
                              ),
                              elevation: 20,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(width / 10)),
                            ),
                            Text(
                              "Employment",
                              style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: ColorGlobal.textColor),
                            ),
                            Text(
                              "Job Positions",
                              style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: ColorGlobal.textColor.withOpacity(0.7)),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.pushNamed(context,EMPLOYMENT_SUPPORT);
                        },
                      ),
                      GestureDetector(
                        child: Column(
                          children: <Widget>[
                            Card(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: width / 10,
                                child: SvgPicture.asset(
                                  'assets/icons/scholarship.svg',
                                  color: ColorGlobal.blueColor,
                                  height: width / 10,
                                  width: width / 10,
                                ),
                              ),
                              elevation: 20,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(width / 10)),
                            ),
                            Text(
                              "Mentorship",
                              style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: ColorGlobal.textColor),
                            ),
                            Text(
                              "Join Mentor Groups",
                              style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: ColorGlobal.textColor.withOpacity(0.7)),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.pushNamed(context,MENTOR_GROUPS);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            (height -
                        (0.325 * height +
                            width / 5 +
                            goSocialSize.height +
                            socialSize.height +
                            coreSize.height +
                            40)) >=
                    0.4 * height
                ? Positioned(
                    top: 0.325 * height +
                        width / 5 +
                        goSocialSize.height +
                        socialSize.height +
                        40,
                    left: 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Core Committee: ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: ColorGlobal.textColor),
                      ),
                    ),
                  )
                : SizedBox(),
            (height -
                        (0.325 * height +
                            width / 5 +
                            goSocialSize.height +
                            socialSize.height +
                            coreSize.height +
                            40)) >=
                    0.4 * height
                ? Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      height: 0.2 * height,
                      width: width,
                      child: new ListView.builder(
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, i) {
                          return Container(
                            width: width * 0.4,
                            height: 0.2 * height,
                            margin: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Card(
                              elevation: 10,
                              shadowColor: Colors.grey.withOpacity(0.4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            height * 0.10)),
                                    child: Container(
                                      height: height * 0.10,
                                      width: height * 0.10,
                                      decoration: new BoxDecoration(
                                        color: ColorGlobal.colorPrimaryDark,
                                        image: new DecorationImage(
                                          image: new AssetImage(
                                              'assets/images/mentor.png'),
                                          fit: BoxFit.contain,
                                        ),
                                        borderRadius: new BorderRadius.all(
                                            Radius.circular(height * 0.10)),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: AutoSizeText(
                                          "${_members[i]}",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: ColorGlobal.textColor,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          maxLines: 2,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "${_roles[i]}",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 9,
                                            letterSpacing: 1,
                                            color: ColorGlobal.textColor
                                                .withOpacity(0.6),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}

class Header extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}