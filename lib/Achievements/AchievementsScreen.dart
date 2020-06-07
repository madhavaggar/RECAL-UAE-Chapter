
import 'package:flutter/material.dart';
import '../Constant/ColorGlobal.dart';

class AchievementsScreen extends StatefulWidget {
  @override
  _AchievementsScreenState createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorGlobal.whiteColor,
        title: Text(
          'Achievements',
          style: TextStyle(color: ColorGlobal.textColor),
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Achievements"),
        ),
      ),
    );
  }
}
