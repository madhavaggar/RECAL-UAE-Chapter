import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
//void main() => runApp(new MyApp());
class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new SocialScreen(),
    );
  }
}
class SocialScreen extends StatefulWidget {
  @override
  SocialScreenState createState() => new SocialScreenState();
}
_launchfacebook() async {
  const url = 'https://www.facebook.com/NITT.Official/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchtwitter() async {
  const url = 'https://twitter.com/NITTAlumniOffic';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchhome() async {
  const url = 'https://alumni.nitt.edu/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchyoutube() async {
  const url = 'https://www.youtube.com/channel/UCEPOEe5azp3FbUjvMwttPqw';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchlinkedin() async {
  const url = 'https://www.linkedin.com/school/nittrichy/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
class SocialScreenState extends State<SocialScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return new Scaffold(
      appBar: AppBar(title: Text("Social Media"),leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),),
      
        body: Container(decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/SocialMedia.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      child: ClipRRect(
	
	child: BackdropFilter(
	  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
	  child: Container(
		alignment: Alignment.center,
		color: Colors.grey.withOpacity(0.1),
		child: SingleChildScrollView(
      child: Column(
        
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20.0),
          Container(
            height: height / 6,
            alignment: Alignment.center,
            child: RaisedButton(
              onPressed: _launchfacebook,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                    gradient:  LinearGradient(
                      colors: [Color(0xff475993), Color(0xff2F5795)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Container(
                  constraints: BoxConstraints(
                      maxWidth: width / 3, minHeight: height / 6),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                    child: Card(
                      elevation: 20,
                      
                        color: Colors.white,
                        child: Padding(padding: EdgeInsets.all(5),child:Container(
                          child: Image(
                            height: 60.0,
                            width: 60.0,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/facebook.png'),
                            alignment: Alignment.center,
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ),),
          SizedBox(height: 20.0),
          Container(
            height: height / 6,
            alignment: Alignment.center,
            child: RaisedButton(
              onPressed: _launchtwitter,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                    gradient:  LinearGradient(
                      colors: [Color(0xff76A9EA), Color(0xff03A9F4)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Container(
                  constraints: BoxConstraints(
                      maxWidth: width / 3, minHeight: height / 6),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                    child: Card(
                      elevation: 20,
                      
                        color: Colors.white,
                        child: Padding(padding: EdgeInsets.all(5),child:Container(
                          child: Image(
                            height: 60.0,
                            width: 60.0,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/twitter.png'),
                            alignment: Alignment.center,
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ),),
          SizedBox(height: 20.0),
          Container(
            height: height / 6,
            alignment: Alignment.center,
            child: RaisedButton(
              onPressed: _launchyoutube,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                    gradient:  LinearGradient(
                      colors: [Color(0xffE13D38), Color(0xffF44336)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Container(
                  constraints: BoxConstraints(
                      maxWidth: width / 3, minHeight: height / 6),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                    child: Card(
                      elevation: 20,
                      
                        color: Colors.white,
                        child: Padding(padding: EdgeInsets.all(5),child:Container(
                          child: Image(
                            height: 60.0,
                            width: 60.0,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/youtube.png'),
                            alignment: Alignment.center,
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ),),
          SizedBox(height: 20.0),
          Container(
            height: height / 6,
            alignment: Alignment.center,
            child: RaisedButton(
              onPressed: _launchlinkedin,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                    gradient:  LinearGradient(
                      colors: [Color(0xff2D959E), Color(0xff0084B1)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Container(
                  constraints: BoxConstraints(
                      maxWidth: width / 3, minHeight: height / 6),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                    child: Card(
                      elevation: 20,
                      
                        color: Colors.white,
                        child: Padding(padding: EdgeInsets.all(5),child:Container(
                          child: Image(
                            height: 60.0,
                            width: 60.0,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/linkedin.png'),
                            alignment: Alignment.center,
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ),),
          SizedBox(height: 20.0),
          Container(
            height: height / 6,
            alignment: Alignment.center,
            child: RaisedButton(
              onPressed: _launchhome,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                    gradient:  LinearGradient(
                      colors: [Color(0xff00B1E8), Color(0xff00ECD1)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Container(
                  constraints: BoxConstraints(
                      maxWidth: width / 3, minHeight: height / 6),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                    child: Card(
                      elevation: 20,
                      
                        color: Colors.white,
                        child: Padding(padding: EdgeInsets.all(5),child:Container(
                          child: Image(
                            height: 60.0,
                            width: 60.0,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/mail.png'),
                            alignment: Alignment.center,
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ),)
        ],
      ),
    ),
	  ),
	),  )));
  }
}