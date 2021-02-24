// import 'package:ecommerce_platform_crio_do/ui/discover.dart';
import 'package:ecommerce_platform_crio_do/ui/login.dart';
// import 'package:ecommerce_platform_crio_do/ui/myCart.dart';
// import 'package:ecommerce_platform_crio_do/ui/orders.dart';
// import 'package:ecommerce_platform_crio_do/ui/sign_in.dart';
// import 'package:ecommerce_platform_crio_do/ui/sign_up.dart';
import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'ui/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // int _page = 0;
  // List<Widget> screenPages = [LoginPage(), Discover(), Orders(), Cart()];

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

