import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './color_shades.dart';
import '../Screen/event.dart';
import 'dart:async';


class VolunteerCard extends StatelessWidget {
  bool isCompleted = false;
  String num;
  VolunteerCard(bool check,String tag) {
    if (check) {
      isCompleted = true;
    }
    num=tag;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 2, right: 4,bottom:6),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                  child: Text(
                    "Event title for RECAL UAE chapter asksj asdkfj adlksfj lkadj sfj",
                    maxLines: 1,
                    style: TextStyle(
                        color: color2,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  margin: EdgeInsets.only(
                      left: 14, top: 6, right: 4, bottom: 2)),
              Container(
                margin: EdgeInsets.only(top: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin:EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.event_note,
                            size: 32,
                            color: Colors.green,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "September 20, 2020",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                child: Text(
                                  "10am - 5pm",
                                  style: TextStyle(
                                    color: Colors.black45,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(child: IconButton(icon:Icon(Icons.chevron_right),onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Event(isCompleted,num)));

                    },),margin: EdgeInsets.only(right: 8),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}