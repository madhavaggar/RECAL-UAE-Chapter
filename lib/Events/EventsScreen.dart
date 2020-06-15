import 'package:flutter/material.dart';
import '../Constant/ColorGlobal.dart';

class EventsScreen extends StatefulWidget {
  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorGlobal.whiteColor,
          title: Text(
            'Events',
            style: TextStyle(color: ColorGlobal.textColor),
          ),
        ),
        body: Container(
          child: Center(
            child: Text("Events"),
          ),
        ),
      ),
    );
  }
}
