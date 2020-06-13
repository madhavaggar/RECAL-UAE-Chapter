import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';


class VisionMission extends StatefulWidget {
  @override
  _FadeInDemoState createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<VisionMission> {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF544F50),
          appBar: AppBar(
            title: Text("Vision and Mission "),
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
          ),
          body: Center(
            child: FractionallySizedBox(
                widthFactor: 0.9,
                heightFactor: 0.8,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: const Color(0xFFEAE3E3),
                      elevation: 20,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.asset('assets/images/Vision.png'),
                            FadeIn(
                              child: Text(
                                "VISION",
                                style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              // Optional paramaters
                              duration: Duration(milliseconds: 4000),
                              curve: Curves.easeIn,
                            ),
                            FadeIn(
                              child: Text(
                                "\"Aspire to be the most active , inclusive and supportive alumni association globally\"",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              // Optional paramaters
                              duration: Duration(milliseconds: 4000),
                              curve: Curves.easeIn,
                            ),
                            Image.asset('assets/images/mission.png'),
                            FadeIn(
                              child: Text(
                                "MISSION",
                                style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              // Optional paramaters
                              duration: Duration(milliseconds: 4000),
                              curve: Curves.easeIn,
                            ),
                            FadeIn(
                              child: Text(
                                "\"RECAL is a non-profit association that develops and strengthens the ties between the alumini of the NIT, Trichy in UAE by providing tangible benefits in social and business networking, mentor support and jobs\"",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              // Optional paramaters
                              duration: Duration(milliseconds: 4000),
                              curve: Curves.easeIn,
                            ),
                          ],
                        ),
                      )),
                )),
          )),
    );
  }
}
