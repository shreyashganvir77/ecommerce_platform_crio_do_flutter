import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'myCart.dart';
import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          actions: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart(),),);
              },
              child: Icon(
                Icons.shopping_cart,
                size: 28.0,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 320.0,
                        child: Card(
                          shadowColor: Colors.deepPurple,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
                          elevation: 8.0,
                          child: Carousel(
                            dotColor: Colors.white,
                            dotIncreasedColor: Colors.deepPurple,
                            dotBgColor: Colors.transparent,
                            dotSize: 5.0,
                            autoplay: false,
                            images: [
                              Image(image: AssetImage('images/dress2.jpg'),fit: BoxFit.fitHeight,),
                              Image(image: AssetImage('images/dress3.jpg'),fit: BoxFit.fitHeight,),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 5,
                        child: Card(
                          child: Icon(Icons.favorite, color: Colors.red, size: 35.0,),
                          shape: CircleBorder(),
                          elevation: 8.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      'Drapped Dress',
                      style: GoogleFonts.inter(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '₹ 100',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22.0,
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  ' 99% off',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '₹ 1.00',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 24.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      'dress',
                      style: GoogleFonts.inter(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(48.0),
                    child: Container(
                      height: .5,
                      width: 1.0,
                      decoration: BoxDecoration(
                          color: Colors.purple[200],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      'Variants',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 35.0,
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          child: CircleAvatar(
                            radius: 30.0,
                            child: Text(
                              'M',
                              style: GoogleFonts.inter(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.deepPurple,
                          ),
                        ),
                        Card(
                          elevation: 0.0,
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          child: CircleAvatar(
                            radius: 25.0,
                            child: Text(
                              'L',
                              style: GoogleFonts.inter(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.purple[300],
                          ),
                        ),
                        Card(
                          elevation: 0.0,
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          child: CircleAvatar(
                            radius: 25.0,
                            child: Text(
                              'XL',
                              style: GoogleFonts.inter(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.purple[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(48.0),
                    child: Container(
                      height: .5,
                      width: 1.0,
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      'Shop Details',
                      style: GoogleFonts.inter(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shop Name :',
                          style: GoogleFonts.inter(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          'Clothing Debug',
                          style: GoogleFonts.inter(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Address :',
                          style: GoogleFonts.inter(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          'Shop N0.102 \nEmpress Mall\nSitabuldi, Nagpur',
                          style: GoogleFonts.inter(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contact :',
                          style: GoogleFonts.inter(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          '9852326486',
                          style: GoogleFonts.inter(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50.0,
                  width: 170.0,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesome.location_arrow, color: Colors.deepPurple, size: 30.0,),
                        SizedBox(
                          width: 40.0,
                        ),
                        Icon(FontAwesome.phone, color: Colors.deepPurple, size: 30.0,),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  width: 220.0,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), bottomLeft: Radius.circular(10.0),),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(AntDesign.shoppingcart, size: 20.0, color: Colors.white,),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Add to Cart',
                          style: GoogleFonts.inter(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
