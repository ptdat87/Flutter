import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "",
      home: MainPage(title: "Gridview of Images"),
    );
  }
}

class MainPage extends StatefulWidget{
  final String title;
  MainPage({this.title}):super();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainPageState();
  }
}

class MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 120.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: EdgeInsets.all(5.0),
        children: _buildGridTiles(39),
      ),
    );
  }
  
  List<Widget> _buildGridTiles(numberOfTiles){
    List<Stack> containers = new List<Stack>.generate(numberOfTiles,
        (int index){
        final imageName = 'images/IMG_${5316+index}JPG.jpg';
        return Stack (
          alignment:  const Alignment(1.0, 1.0),
          children: <Widget>[
            Container(
              child: Image.asset(
                  imageName,
                  width: 120.0,
                  height: 120.0,
                  fit: BoxFit.fill),
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 71, 150, 236)
              ),
              child: Text("${index}",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            )
            )
          ],
        );
        });
    return containers;
  }
}