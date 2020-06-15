import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../Constant/Constant.dart';
import 'SocialMedia.dart';
import 'MarketSurvey.dart';



class SocialPage extends StatefulWidget {
  @override
  _SocialPageState createState() => new _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {

  Future<bool> _onBackPressed () {
    Navigator.pop(context);
  }
 
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                  expandedHeight: 200.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text("Social/Business Groups",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          )),
                      background: Image.asset(
                        "assets/images/socialBusiness.jpg",
                        fit: BoxFit.cover,
                      )),
                ),
              ];
            },
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
                child: new Column(
                  children: <Widget>[
                    SizedBox(height: 10.0),
//                    Container(
//                      height: 80.0,
//                      alignment: Alignment.centerLeft,
//                      child: RaisedButton(
//                        onPressed: () {},
//                        shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(20.0)),
//                        padding: EdgeInsets.all(0.0),
//                        child: Ink(
//                          decoration: BoxDecoration(
//                              gradient: LinearGradient(
//                                colors: [Color(0xff374ABE), Color(0xff3AAFFA)],
//                                begin: Alignment.centerLeft,
//                                end: Alignment.centerRight,
//                              ),
//                              borderRadius: BorderRadius.circular(20.0)),
//                          child: Container(
//                            constraints: BoxConstraints(
//                                maxWidth: width , minHeight: 80.0),
//                            alignment: Alignment.center,
//                            child: Padding(
//                              padding:
//                                  const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
//                              child: Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Container(
////                                    alignment: Alignment.centerRight,
//                                    child: Image(
//                                      height: 40.0,
//                                      width: 40.0,
//                                      fit: BoxFit.cover,
//                                      image: AssetImage(
//                                          'assets/images/database.png'),
//                                      alignment: Alignment.bottomCenter,
//                                    ),
//                                  ),
//                                  Container(
//                                    alignment: Alignment.center,
//                                    child: Text(
//                                      "Database",
//                                      style: TextStyle(
//                                          fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
//                    SizedBox(height: 10.0),
//                    Container(
//                      height: 80.0,
//                      alignment: Alignment.centerRight,
//                      child: RaisedButton(
//                        onPressed: () {},
//                        shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(20.0)),
//                        padding: EdgeInsets.all(0.0),
//                        child: Ink(
//                          decoration: BoxDecoration(
//                              gradient: LinearGradient(
//                                colors: [Color(0xff374ABE), Color(0xff3AAFFA)],
//                                begin: Alignment.centerLeft,
//                                end: Alignment.centerRight,
//                              ),
//                              borderRadius: BorderRadius.circular(20.0)),
//                          child: Container(
//                            constraints: BoxConstraints(
//                                maxWidth: width , minHeight: 80.0),
//                            alignment: Alignment.center,
//                            child: Padding(
//                              padding:
//                                  const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
//                              child: Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Container(
//                                    //alignment: Alignment.centerRight,
//                                    child: Image(
//                                      height: 40.0,
//                                      width: 40.0,
//                                      fit: BoxFit.cover,
//                                      image: AssetImage(
//                                          'assets/images/upcoming.png'),
//                                      alignment: Alignment.bottomCenter,
//                                    ),
//                                  ),
//                                  Container(
////                                    alignment: Alignment.centerLeft,
//                                      child: Padding(
//                                    padding: EdgeInsets.all(10),
//                                    child:
//                                        Text(
//                                          "Upcoming Events",
//                                          style: TextStyle(
//                                              fontSize: 18.0,
//                                              color: Colors.white,fontWeight: FontWeight.bold),
//                                        ),
//
//
//                                  )),
//
//                                ],
//                              ),
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
//                    SizedBox(height: 10.0),
//                    Container(
//                      height: 80.0,
//                      alignment: Alignment.centerLeft,
//                      child: RaisedButton(
//                        onPressed: () {},
//                        shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(20.0)),
//                        padding: EdgeInsets.all(0.0),
//                        child: Ink(
//                          decoration: BoxDecoration(
//                              gradient: LinearGradient(
//                                colors: [Color(0xff374ABE), Color(0xff3AAFFA)],
//                                begin: Alignment.centerLeft,
//                                end: Alignment.centerRight,
//                              ),
//                              borderRadius: BorderRadius.circular(20.0)),
//                          child: Container(
//                            constraints: BoxConstraints(
//                                maxWidth: width, minHeight: 80.0),
//                            alignment: Alignment.center,
//                            child: Padding(
//                              padding:
//                                  const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
//                              child: Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Container(
////                                    alignment: Alignment.centerRight,
//                                    child: Image(
//                                      height: 40.0,
//                                      width: 40.0,
//                                      fit: BoxFit.cover,
//                                      image: AssetImage(
//                                          'assets/images/pastEvent.png'),
//                                      alignment: Alignment.bottomCenter,
//                                    ),
//                                  ),
//                                  Container(
////                                    alignment: Alignment.centerLeft,
//                                    child: Text(
//                                      "Past Events",
//                                      style: TextStyle(
//                                          fontSize: 18.0, color: Colors.white,fontWeight: FontWeight.bold),
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
//                    SizedBox(height: 10.0),
//                    Container(
//                      height: 80.0,
//                      alignment: Alignment.centerRight,
//                      child: RaisedButton(
//                        onPressed: () {},
//                        shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(20.0)),
//                        padding: EdgeInsets.all(0.0),
//                        child: Ink(
//                          decoration: BoxDecoration(
//                              gradient: LinearGradient(
//                                colors: [Color(0xff374ABE), Color(0xff3AAFFA)],
//                                begin: Alignment.centerLeft,
//                                end: Alignment.centerRight,
//                              ),
//                              borderRadius: BorderRadius.circular(20.0)),
//                          child: Container(
//                            constraints: BoxConstraints(
//                                maxWidth: width, minHeight: 80.0),
//                            alignment: Alignment.center,
//                            child: Padding(
//                              padding:
//                                  const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
//                              child: Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                   Container(
////                                    alignment: Alignment.centerRight,
//                                    child: Image(
//                                      height: 40.0,
//                                      width: 40.0,
//                                      fit: BoxFit.cover,
//                                      image: AssetImage(
//                                          'assets/images/felicitation.png'),
//                                      alignment: Alignment.bottomCenter,
//                                    ),
//                                  ),
//                                  Container(
////                                    alignment: Alignment.centerLeft,
//                                    child: Text(
//                                      "Felicitations",
//                                      style: TextStyle(
//                                          fontSize: 18.0, color: Colors.white,fontWeight: FontWeight.bold),
//                                    ),
//                                  ),
//
//                                ],
//                              ),
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
//                    SizedBox(height: 10.0),
//                    Container(
//                      height: 80.0,
//                      alignment: Alignment.centerLeft,
//                      child: RaisedButton(
//                        onPressed: () {},
//                        shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(20.0)),
//                        padding: EdgeInsets.all(0.0),
//                        child: Ink(
//                          decoration: BoxDecoration(
//                              gradient: LinearGradient(
//                                colors: [Color(0xff374ABE), Color(0xff3AAFFA)],
//                                begin: Alignment.centerLeft,
//                                end: Alignment.centerRight,
//                              ),
//                              borderRadius: BorderRadius.circular(20.0)),
//                          child: Container(
//                            constraints: BoxConstraints(
//                                maxWidth: width, minHeight: 80.0),
//                            alignment: Alignment.center,
//                            child: Padding(
//                              padding:
//                                  const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
//                              child: Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Container(
////                                    alignment: Alignment.centerRight,
//                                    child: Image(
//                                      height: 40.0,
//                                      width: 40.0,
//                                      fit: BoxFit.cover,
//                                      image: AssetImage(
//                                          'assets/images/volunteer.png'),
//                                      alignment: Alignment.bottomCenter,
//                                    ),
//                                  ),
//                                  Container(
////                                    alignment: Alignment.centerLeft,
//                                    child: Text(
//                                      "Volunteer",
//                                      style: TextStyle(
//                                          fontSize: 18.0, color: Colors.white,fontWeight: FontWeight.bold),
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
//                    SizedBox(height: 10.0),
                    Container(
                      height: 80.0,
                      alignment: Alignment.centerRight,
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        padding: EdgeInsets.all(0.0),
                        child: InkWell(
                          onTap: (){
                            showDialog(context: context,builder: (context)=> SocialMediaScreen());
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xff374ABE), Color(0xff3AAFFA)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: width , minHeight: 80.0),
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[

                                    Container(
//                                    alignment: Alignment.centerRight,
                                      child: Image(
                                        height: 40.0,
                                        width: 40.0,
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage('assets/images/social.png'),
                                        alignment: Alignment.bottomCenter,
                                      ),
                                    ),
                                    Container(
//                                    alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Social Media",
                                        style: TextStyle(
                                            fontSize: 18.0, color: Colors.white,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 80.0,
                      alignment: Alignment.centerLeft,
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff374ABE), Color(0xff3AAFFA)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: width , minHeight: 80.0),
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
//                                    alignment: Alignment.centerRight,
                                    child: Image(
                                      height: 40.0,
                                      width: 40.0,
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('assets/images/mentor.png'),
                                      alignment: Alignment.bottomCenter,
                                    ),
                                  ),
                                  Container(
//                                    alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child:
                                              Text(
                                                "Write to Mentor",
                                                style: TextStyle(
                                                    fontSize: 18.0,
                                                    color: Colors.white,fontWeight: FontWeight.bold),
                                              ),

                                          )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 80.0,
                      alignment: Alignment.centerRight,
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff374ABE), Color(0xff3AAFFA)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: width , minHeight: 80.0),
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[

                                  Container(
//                                    alignment: Alignment.centerRight,
                                    child: Image(
                                      height: 40.0,
                                      width: 40.0,
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('assets/images/update.png'),
                                      alignment: Alignment.bottomCenter,
                                    ),
                                  ),
                                       Container(
//                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Get Update",
                                      style: TextStyle(
                                          fontSize: 18.0, color: Colors.white,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
//                    Container(
//                      height: 80.0,
//                      alignment: Alignment.centerLeft,
//                      child: RaisedButton(
//                        onPressed: () {},
//                        shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(20.0)),
//                        padding: EdgeInsets.all(0.0),
//                        child: Ink(
//                          decoration: BoxDecoration(
//                              gradient: LinearGradient(
//                                colors: [Color(0xff374ABE), Color(0xff3AAFFA)],
//                                begin: Alignment.centerLeft,
//                                end: Alignment.centerRight,
//                              ),
//                              borderRadius: BorderRadius.circular(20.0)),
//                          child: Container(
//                            constraints: BoxConstraints(
//                                maxWidth: width , minHeight: 80.0),
//                            alignment: Alignment.center,
//                            child: Padding(
//                              padding:
//                                  const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
//                              child: Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Container(
////                                    alignment: Alignment.centerRight,
//                                    child: Image(
//                                      height: 40.0,
//                                      width: 40.0,
//                                      fit: BoxFit.cover,
//                                      image: AssetImage('assets/images/pay.png'),
//                                      alignment: Alignment.bottomCenter,
//                                    ),
//                                  ),
//                                  Container(
////                                    alignment: Alignment.centerLeft,
//                                    child: Text(
//                                      "Pay",
//                                      style: TextStyle(
//                                          fontSize: 18.0, color: Colors.white,fontWeight: FontWeight.bold),
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
//                    SizedBox(height: 10.0),
                    Container(
                      height: 80.0,
                      alignment: Alignment.centerRight,
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        padding: EdgeInsets.all(0.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                            PageTransition(type: PageTransitionType.downToUp, child: SurveyScreen()));
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xff374ABE), Color(0xff3AAFFA)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: width , minHeight: 80.0),
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
//                                    alignment: Alignment.centerRight,
                                      child: Image(
                                        height: 40.0,
                                        width: 40.0,
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage('assets/images/survey.png'),
                                        alignment: Alignment.bottomCenter,
                                      ),
                                    ),
                                       Container(
//                                    alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Survey",
                                        style: TextStyle(
                                            fontSize: 18.0, color: Colors.white,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
        ),
      ),
    );
  }
}
