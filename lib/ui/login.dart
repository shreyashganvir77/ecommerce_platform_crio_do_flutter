import 'dart:ui';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [Colors.pinkAccent, Colors.deepPurple],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Card(
                    elevation: 10.0,
                    clipBehavior: Clip.antiAlias,
                    shape: CircleBorder(),
                    child: Image(
                      image: AssetImage('images/finallogo.jpg',),
                      height: 160.0,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Text(
                    'Porsio',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 50.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                width: 150.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.inter(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Made with',
                    style: GoogleFonts.inter(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(AntDesign.heart, color: Colors.white,size: 20.0,)
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}

