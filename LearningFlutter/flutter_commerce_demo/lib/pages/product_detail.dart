import 'package:flutter/material.dart';
import 'package:flutter_commerce_demo/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_old_price;
  final product_detail_price;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_picture,
    this.product_detail_price,
    this.product_detail_old_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child:   Text('ShopApp'),
        ) ,

        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: null),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture,fit: BoxFit.cover,),
              ) ,
              footer: Container(
                color: Colors.white60,
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                  ),),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("\$${widget.product_detail_old_price}",
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough
                        ),),
                       ),
                      Expanded(
                        child: Text("\$${widget.product_detail_price}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red
                        ),),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          //========= the first buttons =======
          Row(
            children: <Widget>[
              //the size button
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: Text('Size'),
                        content: Text('Choose the size'),
                        actions: <Widget>[
                          new MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                            child: Text('Close'),
                          )
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),

              //the Color
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: Text('Color'),
                            content: Text('Choose the Color'),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),

              //the Qty
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: Text('Qty'),
                            content: Text('Choose the Qty'),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text('Buy now'),
                ),
              )
              ,
              IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.red,),
              onPressed: (){},
              ),
              IconButton(icon: Icon(Icons.favorite_border ),
                color: Colors.red,
                onPressed: (){},
              )
            ],
          ),

          Divider(),
          ListTile(
            title: Text('Product details'),
            subtitle: Text('he 2019 Nissan Murano has an upscale cabin and user-friendly features, but it ranks near the back of the midsize SUV class because of its lackluster driving dynamics '
                           'The 2019 Nissan Murano''s #15 ranking is based on its score within the Midsize SUVs category. It was the winner of our 2019 Best 2-Row SUV for the Money award and a finalist for our 2019 Best 2-Row SUV for Families award. Currently the Nissan Murano has a score of 7.5 out of 10, which is based on our evaluation of 40 pieces of research and data elements using various sources'),
          ),

          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('Product name',
                style: TextStyle(
                  color: Colors.grey
                ),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text(widget.product_detail_name),
              )
            ],
          ),

          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('Product brand',
                  style: TextStyle(
                      color: Colors.grey
                  ),),
              ),

              //REMEMBER TO CREATE THE PRODUCT BRAND
              Padding(padding: EdgeInsets.all(5.0),
                child: Text('Brand X'),
              )
            ],
          ),

          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('Product condition',
                  style: TextStyle(
                      color: Colors.grey
                  ),),
              ),

              //REMEMBER TO CREATE THE PRODUCT CONDITION
              Padding(padding: EdgeInsets.all(5.0),
                child: Text('NEW'),
              ),
            ],
          ),

          //SIMILAR PRODUCTS SECTION
          Divider(height: 10.0, thickness: 5.0,),
          Container(
              padding: const EdgeInsets.all(10.0),
              child:  Text('Similar products')
          ),
          Container(
            height: 360.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      'name': 'Xe1',
      'picture':'images/products/c1.jpg',
      'old_price' : 120.0,
      'price': 100
    },
    {
      'name': 'Xe2',
      'picture':'images/products/c2.jpg',
      'old_price' : 120,
      'price': 100
    },
    {
      'name': 'Xe6',
      'picture':'images/products/c6.jpg',
      'old_price' : 80,
      'price': 100
    }

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        }
    );
  }
}


class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5.0),
      child: Hero(
        tag:prod_name,
        child: Material(
          child: InkWell(
            onTap:()=> Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => new ProductDetails(
                  product_detail_name: prod_name,
                  product_detail_picture: prod_picture,
                  product_detail_price: prod_price,
                  product_detail_old_price: prod_old_price,
                ))
            ) ,
            child: GridTile(
              footer: Container(
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(prod_name,style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0
                          ),)
                      ),
                      Text("\$${prod_price}", style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,

                      ),)
                    ],
                  )
              ),
              child: Image.asset(prod_picture, fit: BoxFit.cover),

            ),
          ),
        ),
      ),
    );
  }
}