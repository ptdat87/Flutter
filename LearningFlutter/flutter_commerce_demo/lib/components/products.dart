import 'package:flutter/material.dart';
import 'package:flutter_commerce_demo/pages/product_detail.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'name': 'Xe8',
      'picture':'images/products/c8.jpg',
      'old_price' : 120.0,
      'price': 100
    },
    {
      'name': 'Xe7',
      'picture':'images/products/c7.jpg',
      'old_price' : 120,
      'price': 100
    },
    {
      'name': 'Xe3',
      'picture':'images/products/c3.jpg',
      'old_price' : 80,
      'price': 100
    },
    {
      'name': 'Xe4',
      'picture':'images/products/c4.jpg',
      'old_price' : 200,
      'price': 200
    },
    {
      'name': 'Xe5',
      'picture':'images/products/c5.jpg',
      'old_price' : 180,
      'price': 150
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        }
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({this.prod_name,
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

