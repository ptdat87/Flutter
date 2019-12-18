import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home:  Scaffold(
        key: _scaffoldKey,
        appBar: new AppBar(
          title: Text(
            "An example of Snackbar"
          ),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.info), onPressed: _showSnackBar)
          ],
        ),
      ),
    );
  }

  _showSnackBar(){
    print("Show Snackbar here !");
    final snackBar = new SnackBar(
        content: Text("This is a SnackBar"),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.green,
      action: SnackBarAction(label: "OK", onPressed: (){
        print("Press Ok on SnackBar");
      },
      textColor: Colors.yellow,
      ),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}