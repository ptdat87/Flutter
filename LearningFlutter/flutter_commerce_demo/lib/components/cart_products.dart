import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var Products_on_the_cart = [
    {
      'name': 'Xe4',
      'picture': 'images/products/c4.jpg',
      'price': 200,
      'size': 'M',
      'color': 'Red',
      'quantity': '1'
    },
    {
      'name': 'Xe1',
      'picture': 'images/products/c1.jpg',
      'price': 180,
      'size': 'S',
      'color': 'Blue',
      'quantity': '2'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_size: Products_on_the_cart[index]["size"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_color: Products_on_the_cart[index]["color"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_color,
      this.cart_prod_price,
      this.cart_prod_picture,
      this.cart_prod_qty,
      this.cart_prod_size});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          //== Leading section ==
          leading: Image.asset(
            cart_prod_picture,
            width: 100.0,
            height: 180.0,
            fit: BoxFit.fill,
          ),

          //== Title Section
          title: Text(cart_prod_name),

          //== Subtitle Section
          subtitle: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  //===Size===
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text('Size:'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      cart_prod_size,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),

                  //===Color===
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                    child: Text('Color:'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(cart_prod_color,
                        style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),

              //== Price ==
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "\$${cart_prod_price}",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              )
            ],
          ),
          trailing: Column(
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      print('Tap 2');
                    },
                    child: Icon(
                      Icons.arrow_drop_up,
                      size: 25.0,
                    ),
                  ),
                  Text(cart_prod_qty),
                  InkWell(
                    onTap: () {
                      print('Tap 3');
                    },
                    child: Icon(Icons.arrow_drop_down, size: 25.0),
                  ),
                ],
              ),
            ],
          )),
    );
  }

//  void addQuantity(){
//    cart_prod_qty = cart_prod_qty + 1;
//  }

}
