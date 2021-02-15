import 'package:ecommerce_platform_crio_do/ui/discover.dart';
import 'package:ecommerce_platform_crio_do/ui/orders.dart';
import 'package:ecommerce_platform_crio_do/ui/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ui/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int _page = 0;
  List<Widget> Screens = [HomePage(), Discover(), Orders()];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Screens[_page],
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

