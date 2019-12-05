import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My App",
    home: Myscaffold(),
  ));
}

class MyAppBar extends StatelessWidget {
  final Widget title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 56.0,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(color: Colors.blue),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              tooltip: "Navigation menu",
              onPressed: null,
            ),
            Expanded(
              child: title,
            ),
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "Search",
              onPressed: null,
            )
          ],
        ));
  }
}

class Myscaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
        child: Column(
      children: <Widget>[
        MyAppBar(
            title: Text(
          "Example App",
          style: Theme.of(context).primaryTextTheme.title,
        )),
        Expanded(child: Center(child: Text('Hello world')))
      ],
    ));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hello world 2", textDirection: TextDirection.ltr),
    );
  }
}
