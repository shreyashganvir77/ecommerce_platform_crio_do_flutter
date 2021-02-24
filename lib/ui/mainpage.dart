import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'homepage.dart';
import 'discover.dart';
import 'orders.dart';
import 'myCart.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _page = 0;
  List<Widget> screenPages = [HomePage(), Discover(), Orders(), Cart()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: screenPages[_page],
          bottomNavigationBar: CurvedNavigationBar(
            color: Colors.blue[800],
            buttonBackgroundColor: Colors.blue[800],
            animationDuration: Duration(
              milliseconds: 300,
            ),
            height: 55.0,
            index: 0,
            backgroundColor: Colors.white,
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
            letIndexChange: (index) => true,
            items: [
              Icon(Icons.home_filled, color: Colors.white,),
              Icon(Icons.favorite, color: Colors.white,),
              Icon(Icons.shopping_cart_rounded, color: Colors.white,),
              Icon(Icons.share_rounded, color: Colors.white,),
            ],
          ),
        )
    );
  }
}
