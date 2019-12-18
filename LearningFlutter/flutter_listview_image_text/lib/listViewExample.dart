import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'data.dart';
import 'car.dart';

class ListViewExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListViewExampleState();
  }
}

class ListViewExampleState extends State<ListViewExample> {
  var selectedCar = new Car();

  List<GestureDetector> _buildListItemsFromCars() {
    int index = 0;
    return cars.map((car) {
      var rowColor = index % 2 == 0 ? Colors.white: Colors.blue[50];
      if (selectedCar == car) rowColor = Colors.deepOrange[400];
      var container = Container(
        decoration: BoxDecoration(color: rowColor),
        child: Row(
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.all(10.0),
              child: CachedNetworkImage(
                  imageUrl: car.imageURL,
                  width: 110.0,
                  height: 90.0,
                  fit: BoxFit.contain,
              ),
            ),
            Expanded(child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0,left: 10.0,right: 5.0),
                  child: Text(
                    car.carName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(  bottom: 20.0,left: 10.0,right: 10.0),
                  child:
                  Text(
                      car.description,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0,
                          color: Colors.black,
                          decoration: TextDecoration.none,),
                      textAlign: TextAlign.left
                  ),
                )

                //)
              ],
            )
            )

          ],
        ),
      );
      index += 1;
      final gestureDetector = GestureDetector(
        child: container,
        onTap: (){
          print('You tapped to ${car.carName}');
          setState(() {
            selectedCar = car;
          });
        },
      );

      return gestureDetector;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: _buildListItemsFromCars(),
    );
  }
}
