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
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                  height: 180.0,
                  width: 310.0,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0),),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                        colors: [Colors.pink, Colors.purple],
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 28.0, left: 40.0),
                        child: CircleAvatar(
                          radius: 33.0,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.person,
                            size: 60.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                        child: Text(
                          'Swapnil Singh',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.favorite, size: 28.0,),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'Wishlist',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 24.0
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.feedback_rounded, size: 28.0,),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'Feedback',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.logout, size: 28.0,),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'Logout',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 24.0
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.help_rounded, size: 28.0,),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'Help',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
