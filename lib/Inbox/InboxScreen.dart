import 'package:flutter/material.dart';
import '../Constant/ColorGlobal.dart';

class InboxScreen extends StatefulWidget {
  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorGlobal.whiteColor,
          title: Text(
            'Inbox',
            style: TextStyle(color: ColorGlobal.textColor),
          ),
        ),
        body: Container(
          child: Center(
            child: Text("Inbox"),
          ),
        ),
      ),
    );
  }
}
