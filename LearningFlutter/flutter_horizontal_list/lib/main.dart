import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class HorizontalList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HorizontalListState();
  }
}


class HorizontalListState extends State<HorizontalList>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text('Horizontal List'),),
      body: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.red,
              child: Center(
                child: Text('Page 1', style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white
                ),),
              ),
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.blue,
              child: Center(
                child: Text('Page 2', style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white
                ),),
              ),
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.green,
              child: Center(
                child: Text('Page 3', style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: '',
        home: HorizontalList()
    );
  }
}