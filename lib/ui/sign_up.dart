import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mainpage.dart';

class SignUp extends StatelessWidget {
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
                'Sign Up with Email',
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
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage(),),);
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
                        'Sign Up',
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
              SizedBox(
                height: 28.0,
              ),
              Text(
                'OR',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 27.0,
                ),
              ),
              SizedBox(
                height: 28.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 52.0, right: 52),
                child: Container(
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(23.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('images/google.png'), height: 26.0,),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Sign Up with Google',
                        style: GoogleFonts.inter(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
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
