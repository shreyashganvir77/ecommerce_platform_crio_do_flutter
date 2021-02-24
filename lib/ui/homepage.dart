import 'package:ecommerce_platform_crio_do/ui/myCart.dart';
import 'package:ecommerce_platform_crio_do/ui/products.dart';
import 'package:ecommerce_platform_crio_do/ui/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

List<Widget> products = [
  Padding(
    padding: const EdgeInsets.only(left:18.0, right: 18.0),
    child: Row(
      children: [
        Container(
          height: 150.0,
          width: 150.0,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        Container(
          height: 150.0,
          width: 150.0,
          decoration: BoxDecoration(
            color: Colors.green,
          ),
        ),
      ],
    ),
  ),
  SizedBox(
    height: 15.0,
  ),
  Row(
    children: [
      Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
      Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          color: Colors.green,
        ),
      ),
    ],
  )
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Porsio',
            style: GoogleFonts.roboto(fontSize: 25.0),
          ),
          actions: [
            Icon(
              Icons.location_on_outlined,
              size: 28.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart(),),);
              },
              child: Icon(
                Icons.shopping_cart,
                size: 28.0,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
          elevation: 0.0,
          backgroundColor: Colors.deepPurple,
        ),
        drawer: CustomDrawer(),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  cursorHeight: 20.0,
                  showCursor: true,
                  cursorRadius: Radius.circular(10.0),
                  keyboardType: TextInputType.text,
                  enabled: true,
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(38.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(38.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(38.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        )),
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 18.0, height: 2.7),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Store Nearby',
                    style: GoogleFonts.roboto(fontSize: 20.0, fontWeight: FontWeight.w700)
                  ),
                  Container(
                    height: 30.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(color: Colors.black, width: 2.0),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text(
                            'Change',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Icon(
                            Icons.location_on,
                            size: 18.0,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                height: 100.0,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    storeNearby(
                      icon: Icon(
                        Icons.shop,
                        color: Colors.black,
                        size: 45.0,
                      ),
                      text: 'Pan Shop',
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    storeNearby(
                      icon: Icon(
                        Icons.voicemail_outlined,
                        color: Colors.black,
                        size: 45.0,
                      ),
                      text: 'Clothing debug',
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    storeNearby(
                      icon: Icon(
                        Icons.panorama,
                        color: Colors.black,
                        size: 45.0,
                      ),
                      text: 'Dummy Shoe',
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    storeNearby(
                      icon: Icon(
                        Icons.mobile_friendly_sharp,
                        color: Colors.black,
                        size: 45.0,
                      ),
                      text: 'Testing',
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    storeNearby(
                      icon: Icon(
                        Icons.square_foot,
                        color: Colors.black,
                        size: 45.0,
                      ),
                      text: 'Footwear Debug',
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    storeNearby(
                      icon: Icon(
                        Icons.sports_football,
                        color: Colors.black,
                        size: 45.0,
                      ),
                      text: 'Football',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Super Offers',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Container(
                    height: 30.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(color: Colors.black, width: 2.0),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text(
                            'View all',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Container(
                height: 200.0,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
                  elevation: 10.0,
                  child: Carousel(
                    dotBgColor: Colors.transparent,
                    images: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image(image: AssetImage('images/shitts.jpg'),
                        fit: BoxFit.cover,),
                      ),
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image(image: AssetImage('images/fresh.jpg'),
                          fit: BoxFit.cover,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Products',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Container(
                    height: 30.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(color: Colors.black, width: 2.0),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Products(),),);
                            },
                            child: Text(
                              'Explore all',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left:18.0, right: 18.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150.0,
                    width: 150.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Image(image: AssetImage('images/perfume.jpg'),),
                  ),
                  Container(
                    height: 150.0,
                    width: 150.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Image(image: AssetImage('images/sneaker.jpg'),),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left:18.0, right: 18.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150.0,
                    width: 150.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Image(image: AssetImage('images/dress2.jpg'), fit: BoxFit.cover,),
                  ),
                  Container(
                    height: 150.0,
                    width: 150.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Image(image: AssetImage('images/heel2.png'),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class storeNearby extends StatelessWidget {
  final Widget icon;
  final String text;
  const storeNearby({
    this.icon,
    this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 36.0,
          backgroundColor: Colors.pinkAccent,
          child: icon,
        ),
        Text(
          'text',
          style: TextStyle(fontSize: 12.0),
        ),
      ],
    );
  }
}
