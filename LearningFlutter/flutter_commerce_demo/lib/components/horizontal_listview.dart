import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/types/t1.JPG',
            image_caption: 'Coupe',),
          Category(
            image_location: 'images/types/t2.JPG',
            image_caption: 'Sedan',),
          Category(
            image_location: 'images/types/t3.JPG',
            image_caption: 'VAN',),
          Category(
            image_location: 'images/types/t4.JPG',
            image_caption: 'Pickup',),
          Category(
            image_location: 'images/types/t5.JPG',
            image_caption: 'Limousine',),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location ;
  final String image_caption ;

  Category({
    this.image_caption,
    this.image_location
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 120.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 50.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: TextStyle(
                  fontSize: 14.0
              ),),
            ),
          ),
        )

      ),
    );
  }
}


