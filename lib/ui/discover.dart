import 'package:ecommerce_platform_crio_do/ui/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

List<Widget> categoriesList = [
  Text('Grocery and Essentials',
    style: TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w300,
    ),
  ),
  Text('Home and Kitchen',
    style: TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w300,
    ),),
  Text('Beauty and Cosmetics',
    style: TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w300,
    ),),
  Text('Electronics',
    style: TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w300,
    ),),
  Text('Clothing and Accessories',
    style: TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w300,
    ),),
  Text('Books and Creative',
    style: TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w300,
    ),),
  Text('Others',
    style: TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w300,
    ),),
];
List<Widget> shops = [
  Row(
    children: [
      Icon(Icons.shop, size: 25.0, color: Colors.black,),
      SizedBox(
        width: 15.0,
      ),
      Text('Pans Shop',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w300,
        ),),
    ],
  ),
  Row(
    children: [
      Icon(FontAwesome.shirtsinbulk, size: 25.0, color: Colors.black,),
      SizedBox(
        width: 15.0,
      ),
      Text('Clothing Debug',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w300,
        ),),
    ],
  ),
  Row(
    children: [
      Icon(AntDesign.fork, size: 25.0, color: Colors.black,),
      SizedBox(
        width: 15.0,
      ),
      Text('Dummy Shoe',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w300,
        ),),
    ],
  ),
  Row(
    children: [
      Icon(Icons.mobile_friendly_sharp, size: 25.0, color: Colors.black,),
      SizedBox(
        width: 15.0,
      ),
      Text('Testing',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w300,
        ),),
    ],
  ),
  Row(
    children: [
      Icon(Icons.square_foot, size: 25.0, color: Colors.black,),
      SizedBox(
        width: 15.0,
      ),
      Text('Footwear',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w300,
        ),),
    ],
  ),
  Row(
    children: [
      Icon(Icons.sports_football, size: 25.0, color: Colors.black,),
      SizedBox(
        width: 15.0,
      ),
      Text('Dummy',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w300,
        ),),
    ],
  ),
  Row(
    children: [
      Icon(AntDesign.ellipsis1, size: 25.0, color: Colors.black,),
      SizedBox(
        width: 15.0,
      ),
      Text('Cosmetic Debug',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w300,
        ),),
    ],
  ),
  Row(
    children: [
      Icon(Icons.data_usage_sharp, size: 25.0, color: Colors.black,),
      SizedBox(
        width: 15.0,
      ),
      Text('Dummy Shop',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w300,
        ),),
    ],
  ),
  Row(
    children: [
      Icon(Icons.tv_rounded, size: 25.0, color: Colors.black,),
      SizedBox(
        width: 15.0,
      ),
      Text('TV Debug',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w300,
        ),),
    ],
  ),
];


class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  Color _color1 = Colors.white;
  Color _colorBg1 = Colors.deepPurple;
  Color _color2 = Colors.white;
  Color _colorBg2 = Colors.deepPurple;
  var _display = categoriesList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:
          Text(
            'Discover',
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
        drawer: CustomDrawer(),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.center,
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0),),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Container(
                      width: 150.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: _colorBg1,
                        borderRadius: BorderRadius.circular(19.0),
                      ),
                      child: Row(
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.menu_open, size: 34.0,color: _color1,),
                          Text(
                            'Categories',
                            style: TextStyle(
                              color: _color1,
                              fontWeight: FontWeight.w400,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        print('detected');
                        if(_color1 == Colors.white){
                          _color1 = Colors.deepPurple;
                          _colorBg1 = Colors.white;
                          _color2 = Colors.white;
                          _colorBg2 = Colors.deepPurple;
                          _display = categoriesList;
                        }
                        else{
                          _color1 = Colors.white;
                          _colorBg1 = Colors.deepPurple;
                          _color2 = Colors.white;
                          _colorBg2 = Colors.deepPurple;
                        }
                      });
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      width: 150.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: _colorBg2,
                        borderRadius: BorderRadius.circular(19.0),
                      ),
                      child: Row(
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.shopping_bag_outlined, size: 34.0,color: _color2,),
                          Text(
                            'Shops',
                            style: TextStyle(
                              color: _color2,
                              fontWeight: FontWeight.w400,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        print('detected');
                        if(_color2 == Colors.white){
                          _color2 = Colors.deepPurple;
                          _colorBg2 = Colors.white;
                          _color1 = Colors.white;
                          _colorBg1 = Colors.deepPurple;
                          _display = shops;
                        }
                        else{
                          _color2 = Colors.white;
                          _colorBg2 = Colors.deepPurple;
                          _color1 = Colors.deepPurple;
                          _colorBg1 = Colors.white;
                          _display = categoriesList;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:35.0, left: 40.0, right: 45.0),
              child: Container(
                height: 535.0,
                alignment: Alignment.center,
                child: ListView.builder(
                  itemCount: _display.length,
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 0.5),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:10.0, bottom: 10),
                        child: _display[index],
                      ),
                    );
                  },
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
