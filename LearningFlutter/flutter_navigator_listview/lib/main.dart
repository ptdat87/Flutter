import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class RandomeEnglishWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RandomEnglishWordsState();
  }
}

class RandomEnglishWordsState extends State<RandomeEnglishWords> {
  final _words = <WordPair>[];
  final wordPair = new WordPair.random();
  final _checkedWords = new Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("List of English Words"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushToSavedWordsScreen)
        ],
      ),
      body: new ListView.builder(itemBuilder: (context, index) {
        if (index >= _words.length) _words.addAll(generateWordPairs().take(10));

        return _buildRow(_words[index], index);
      }),
    );
  }

  _pushToSavedWordsScreen(){
      //print("You pressed to the right Icon");
      final pageRoute = new MaterialPageRoute(builder: (context){
      final listTiles = _checkedWords.map((wordPair){
        return new ListTile(
          title: new Text(wordPair.asUpperCase,
            style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)
        );
      });
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Checked words")
        ),
        body: new ListView(
          children: listTiles.toList(),
        ),
      );
    });
      //Navigator: push new screen to Stack
      Navigator.of(context).push(pageRoute);
  }

  Widget _buildRow(WordPair wordPair, int index) {
    final rowcolor = index % 2 == 0 ? Colors.red : Colors.blue;
    final isCheck = _checkedWords.contains(wordPair);
    return new ListTile(
      leading: new Icon(
        isCheck ? Icons.check_box : Icons.check_box_outline_blank,
        color: rowcolor,
      ),
      title: new Text(
        wordPair.asUpperCase,
        style: new TextStyle(fontSize: 18.0, color: rowcolor),
      ),
      onTap: () {
        setState(() {
          if (isCheck)
            _checkedWords.remove(wordPair);
          else
            _checkedWords.add(wordPair);
        });
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "This is my first Flutter App",
      home: new RandomeEnglishWords(),
    );
  }
}
