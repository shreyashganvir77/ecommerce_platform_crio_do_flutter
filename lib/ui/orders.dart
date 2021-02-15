import 'package:ecommerce_platform_crio_do/ui/drawer.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title:
            Text(
              'Orders',
              style: TextStyle(
                fontSize: 25.0,),
            ),
            actions: [
              Icon(Icons.shopping_cart,size: 28.0,),
              SizedBox(
                width: 20.0,
              ),
            ],
            elevation: 0.0,
            backgroundColor: Colors.deepPurple,
          ),
          drawer: CustomDrawer(),
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(image: AssetImage('images/cart.jpg'),),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'No Orders Yet!',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
    );
  }
}
