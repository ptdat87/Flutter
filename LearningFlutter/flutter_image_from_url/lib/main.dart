import 'package:flutter/material.dart';
import 'urlImage.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final materialApp = MaterialApp(
      title: '',
      home: URLImage(),
    );
    return materialApp;
  }
}