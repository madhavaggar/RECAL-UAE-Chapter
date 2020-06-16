import 'dart:developer';
import 'package:flutter/material.dart';
import './CompletedEvents.dart';
import './UpcomingEvents.dart';
import '../Constant/ColorGlobal.dart';

class Volunteer extends StatefulWidget {
  @override
  _VolunteerState createState() => _VolunteerState();
}
class _VolunteerState extends State<Volunteer> {
  double position=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffeae3e3),
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          iconTheme: IconThemeData(
              color: Colors.white

          ),
          title: Text("Volunteering",style: TextStyle(color: Colors.white),),
        ),

        body: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              Material(
                color: ColorGlobal.color4,
                child: TabBar(
                  indicatorColor: Colors.lightBlueAccent,
                  indicatorWeight: 2,
                  onTap: (index){
                    setState(() {
                      position = 0;
                    });
                  },
                  tabs:[
                    Tab(icon:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 2,
                        ),
                        Icon(Icons.timer,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Upcoming",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    ),
                    Tab(icon:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 2,
                        ),
                        Icon(Icons.check_circle),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Completed",
                            style: TextStyle(fontSize: 14,),
                          ),
                        ),
                      ],
                    ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    UpcomingEvents(),
                    CompletedEvents(),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }}
