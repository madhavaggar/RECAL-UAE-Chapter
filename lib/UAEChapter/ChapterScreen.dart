
import 'package:flutter/material.dart';
import '../Constant/ColorGlobal.dart';

class ChapterScreen extends StatefulWidget {
  @override
  _ChapterScreenState createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorGlobal.whiteColor,
          title: Text(
            'UAE Chapter',
            style: TextStyle(color: ColorGlobal.textColor),
          ),
        ),
        body: Container(
          child: Center(
            child: Text("UAE Chapter"),
          ),
        ),
      ),
    );
  }
}
