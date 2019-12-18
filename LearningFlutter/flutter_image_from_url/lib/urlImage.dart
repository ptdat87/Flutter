import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';


class URLImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return URLImageState();
  }
}


class URLImageState extends State<URLImage> {
  var imageURLs = [
    'https://quangcaohandy.com/wp-content/uploads/2019/01/pepsi.png',
    'https://www.chili.vn/blogs/wp-content/uploads/2019/03/thiet-ke-logo-5-1.jpg',
    'https://logomaster.ai/static/media/gallery002.936afb9d.png',
    'https://logoart.vn/blog/wp-content/uploads/2010/04/Thiet-ke-logo-dang-cap-sang-tao1.png'
  ];
  var selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final cachedImage = CachedNetworkImage(
      placeholder: (context, url) => new CircularProgressIndicator(),
      imageUrl: imageURLs[selectedImageIndex],
      height: 300.0,
    );


    return Scaffold(
      appBar: AppBar(
        title: Text('Load URL image in Flutter')
      ),
      body: Container(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Center(
                child: cachedImage,
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  child: Text('Back'),
                  onPressed: (){
                    setState(() {
                      if (selectedImageIndex > 0)
                        selectedImageIndex --;
                    });
                  },
                ),
              ),
              Expanded(
                child: RaisedButton(
                  child: Text('Next'),
                  onPressed: (){
                    setState(() {
                      if (selectedImageIndex < imageURLs.length - 1)
                        selectedImageIndex ++;
                    });
                  },
                ),
              )
            ],
          )
        ],
      )
      ),
    );
  }

}