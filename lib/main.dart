import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomePage(),
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.purple,
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
            Icon(Icons.home_filled),
            Icon(Icons.favorite),
            Icon(Icons.shopping_cart_rounded),
            Icon(Icons.share_rounded),
          ],
        ),
      )
    );
  }
}

