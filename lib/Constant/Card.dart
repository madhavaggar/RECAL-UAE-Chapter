import 'package:flutter/material.dart';
import 'color_shades.dart' as color_shades;
import 'package:flutter_svg/flutter_svg.dart';

class Card_title extends StatelessWidget {
  String title;

  Card_title(String title) {
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color_shades.color5, Colors.white.withOpacity(0.5)],
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                    child: SvgPicture.asset('assets/icons/$title.svg',
                        color: color_shades.color4),
                    height: 60)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 20.0, color: color_shades.color4),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
