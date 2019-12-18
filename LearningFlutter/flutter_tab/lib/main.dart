import 'package:flutter/material.dart';
import 'tab1.dart';
import 'tab2.dart';
import 'tab3.dart';
import 'tab4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final tabController = DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("These are tabs"),
          bottom: new TabBar(indicatorColor: Colors.red, tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.group),
              text: "Group",
            ),
            Tab(
              icon: Icon(Icons.chat_bubble),
              text: "Chat",
            ),
            Tab(
              icon: Icon(Icons.cloud_queue),
              text: "Cloud",
            ),
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            Tab1(),
            Tab2(),
            Tab3(),
            Tab4(),
          ],
        ),
      ),
    );
    return MaterialApp(title: "Tabs example", home: tabController);
  }
}
