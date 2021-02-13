import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title:
            Text(
              'Porsio',
              style: TextStyle(
                fontSize: 25.0,),
            ),
            actions: [
              Icon(Icons.location_on_outlined,size: 28.0,),
              SizedBox(
                width: 10.0,
              ),
              Icon(Icons.shopping_cart, size: 28.0,),
              SizedBox(
                width: 20.0,
              ),
            ],
            elevation: 0.0,
            backgroundColor: Colors.deepPurple,
          ),
        ),
    );
  }
}
