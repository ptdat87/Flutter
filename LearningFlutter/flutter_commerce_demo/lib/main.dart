import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//My own imports
import 'package:flutter_commerce_demo/components/horizontal_listview.dart';
import 'package:flutter_commerce_demo/components/products.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/carousel/c1.jpg'),
          AssetImage('images/carousel/c2.jpg'),
          AssetImage('images/carousel/c3.jpg'),
          AssetImage('images/carousel/c4.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 5.0,
        indicatorBgPadding: 4.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.red,
          title: Text('ShopApp'),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: null),
            new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: null)
          ],
        ),
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              //Header
              new UserAccountsDrawerHeader(
                accountName: Text('DatPT'),
                accountEmail: Text('datpt@hqsoft.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.red
                ),
              ),
              //Body
              InkWell(
                onTap: (){},
                child:   ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home,color: Colors.red),
                ),
              ),
              InkWell(
                onTap: (){},
                child:   ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person,color: Colors.red),
                ),
              ),
              InkWell(
                onTap: (){},
                child:   ListTile(
                  title: Text('My Orders'),
                  leading: Icon(Icons.shopping_basket,color: Colors.red),
                ),
              ),
              InkWell(
                onTap: (){},
                child:   ListTile(
                  title: Text('Shopping cart'),
                  leading: Icon(Icons.shopping_cart,color: Colors.red,),
                ),
              ),
              InkWell(
                onTap: (){},
                child:   ListTile(
                  title: Text('Favorite'),
                  leading: Icon(Icons.favorite,color: Colors.red),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){},
                child:   ListTile(
                  title: Text('Setting'),
                  leading: Icon(Icons.settings),
                ),
              ),
              InkWell(
                onTap: (){},
                child:   ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help),
                ),
              )

            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            //image carousel begin here
            image_carousel ,

            //Padding widget
//            Padding(padding: const EdgeInsets.all(2.0),
//            child: Text('Categories'),
//            ),

            //Horizontal list view begin here
            HorizontalList(),

            Divider( height: 20.0, color: Colors.grey[300], thickness: 5.0,),

            //grid view
            Container(
              height: 320.0 ,
              child: Products(),
            )

          ],
        ),
      ),
    );
  }
}


