import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class InfiniteListView extends StatefulWidget{
@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InfiniteListViewState();
  }
}

class InfiniteListViewState extends State<InfiniteListView>{
  var items = new List<String>.generate(30, (i)=> 'Item $i');


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: new ListView.builder(
          itemCount: items.length+1 ,
          itemBuilder: (context, index){
            final widgetItem = index == items.length ?
                new RaisedButton(
                    child: const Text('Load more...'),
                    color: Colors.lime,
                    splashColor: Colors.red,
                    elevation: 4.0,
                    onPressed: (){
                      var nextItems = new List<String>.generate(20, (i){
                        var itemId = i + items.length;
                        return "Item $itemId";
                      });
                      setState(() {
                        items.addAll(nextItems);
                      });
                    }
                ):
                new ListTile(
                  title: Text('${items[index]}')
                );
            return widgetItem;
          },
        ),
      ),
    );
  }

}



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final materialApp = MaterialApp(
      title: '',
      home: InfiniteListView()
    );
    return materialApp;
  }
}