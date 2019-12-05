import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "Flutter Tutorial",
  home: TutorialHome()
));

class TutorialHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Navigation menu",
          onPressed: null
        ),
        title: Center(
          child: Text("Material App"),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Seach",
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: Text("Hello World 1"),
      ),
        floatingActionButton: FloatingActionButton(
          tooltip: "Add",
          child: Icon(Icons.add),
          onPressed: null,
        ),
    );
  }
}