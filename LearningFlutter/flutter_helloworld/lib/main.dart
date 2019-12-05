import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    final wordPair = WordPair.random();

    return MaterialApp (
      title: "Welcome to My Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hi "),
        ),
        body: Center(
          child : Text(wordPair.asUpperCase),
        )
      )
    );
  }
}