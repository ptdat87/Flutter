import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  var title = '';

  Drawer _buildDrawer(context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'images/user.png',
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
                Text("Nguyen Van A",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Software developer",
                    style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          decoration: BoxDecoration(color: Colors.blue),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text("Photos"),
          onTap: (){
          setState(() {
            this.title = "This is Photos page";
          });
          Navigator.pop(context);
        },
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text("Notifications"),
          onTap: (){
            setState(() {
              this.title = "This is Notifications page";
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
        ),
        Divider(
          color:  Colors.black45,
          indent: 16.0
        ),
        ListTile(
          title: Text("About US"),
        ),
        ListTile(
          title: Text("Privacy"),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer in Flutter"),
      ),
      body: Center(
          child: Text(
        this.title,
        style: TextStyle(fontSize: 25.0),
      )),
      drawer: _buildDrawer(context),
    );
  }
}
