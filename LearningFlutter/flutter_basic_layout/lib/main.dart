import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget titleSection = Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          new Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text('Flutter tutorial',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0)),
                ),
                Text('This is tutorial content about Flutter...',
                    style: TextStyle(color: Colors.grey[600]))
              ],
            ),
          ),
          Icon(Icons.favorite, color: Colors.grey),
          Text(' 100', style: TextStyle(fontSize: 16.0))
        ],
      ),
    );

    Widget buildButton(IconData icon, String buttonTitle) {
      final Color tintColor = Colors.blue;
      return new Column(
        children: <Widget>[
          IconButton(
              icon: Icon( icon , color: tintColor,) ,
              tooltip: buttonTitle,
              onPressed: null),
          Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: Text(
              buttonTitle,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: tintColor),
            ),
          )

        ],
      );
    }

    Widget fourButtonSection = Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        buildButton(Icons.home, "Home"),
        buildButton(Icons.arrow_back, "Back"),
        buildButton(Icons.arrow_forward, "Forward"),
        buildButton(Icons.share, "Share"),
      ],
    ));

    Widget bottomTextSection = new Container(
      padding: EdgeInsets.all(20.0) ,
      child: Text('''
      To stay on top of Flutter announcements, including breaking changes, join the flutter-announce Google group.

Sept 10, 2019

Flutter 1.9 is live!

For more information, see Flutter news from GDD China: uniting Flutter on web and mobile, and introducing Flutter 1.9 and the 1.9.1 release notes.

For the 1.9 release, Flutter’s web support has been merged (“unforked”) into the main repo. Web support hasn’t reached beta, and is not ready to be used in production. Web and desktop support (which is also coming), will impact the website, which was originally written exclusively for developing Flutter mobile apps. Some website updates are available now (and listed below), but more will be coming.
      ''',
      style: TextStyle(
        color: Colors.grey[850],
        fontSize: 16.0
      ),),
    );

    return MaterialApp(
        title: "",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Flutter App"),
            ),
            body: ListView(
              children: <Widget>[
                Image.asset('images/logo.jpg', fit: BoxFit.cover),
                titleSection,
                fourButtonSection,
                bottomTextSection
              ],
            )));
  }
}
