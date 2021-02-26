import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mainpage.dart';
import 'package:ecommerce_platform_crio_do/functionalities/authService.dart';

class EmailSignIn extends StatefulWidget {
  @override
  _EmailSignInState createState() => _EmailSignInState();
}

class _EmailSignInState extends State<EmailSignIn> {

  AuthService _auth = AuthService();
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.pink, Colors.deepPurple],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign In with Email',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 33.0,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left:12.0, right: 12.0),
                child: TextField(
                  onChanged: (value){
                    setState(() {
                      _email = value.trim();
                    });
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'xyz@email.com',
                    hintStyle: GoogleFonts.inter(
                      fontSize: 18.0,
                    ),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder().copyWith(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    disabledBorder: OutlineInputBorder().copyWith(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    enabledBorder: OutlineInputBorder().copyWith(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    hoverColor: Colors.white,
                    focusColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left:12.0, right: 12.0),
                child: TextField(
                  onChanged: (value){
                    setState(() {
                      _password = value.trim();
                    });
                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: GoogleFonts.inter(
                      fontSize: 18.0,
                    ),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder().copyWith(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    disabledBorder: OutlineInputBorder().copyWith(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    enabledBorder: OutlineInputBorder().copyWith(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    hoverColor: Colors.white,
                    focusColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: GestureDetector(
                  onTap: () async{
                    dynamic result = await _auth.signInEmail(_email, _password);
                    if(result==null){
                      print('Error in Signing in');
                    }
                    else{
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage(),),);
                      return result;
                    }
                  },
                  child: Container(
                    height: 45.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(27.0),
                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 28.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
