import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    Card card = Card (
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_box,
            color: Colors.blue,
              size: 36.0,
            ),
            title: Text("Nguyen Van A",
            style: TextStyle(
              fontWeight: FontWeight.w400
            ),),
            subtitle: Text("Software developer"),
          ),
          Divider(
            color: Colors.blue,
            indent: 16.0,
          ),
          ListTile(
            leading: Icon(
              Icons.email, color: Colors.blue, size: 26.0,
            ),
            title: Text(
              "abc@gmail.com", style: TextStyle(
              fontWeight: FontWeight.w400
            ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.phone, color: Colors.blue, size: 26.0,
            ),
            title: Text(
              "+84-0387387333", style: TextStyle(
                fontWeight: FontWeight.w400
            ),
            ),
          )
        ],
      ),
    );

    final sizedBox = Container(
      height: 220.0,
      margin: EdgeInsets.only(left: 10.0,right: 10.0),
      child: SizedBox(
        child: card,
      ),
    );

    final center = Center(
      child: sizedBox,
    );

    return MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Card Example"),
        ),
        body: center,
      ),
    );
  }
}