import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

List<Widget> CartItems = [
  OrderCard(photo: 'images/earrings.jpg', price: '₹ 5180', title: 'Earrings'),
  OrderCard(photo: 'images/perfume.jpg', price: '₹ 1999', title: 'Perfume'),
  OrderCard(photo: 'images/sneaker.jpg', price: '₹ 1500', title: 'Shoes'),
  OrderCard(photo: 'images/dress2.jpg', price: '₹ 5000', title: 'Dress'),
  OrderCard(photo: 'images/shoes.jpg', price: '₹ 2499', title: 'Shoes'),
];

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text(
              'My Cart',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500, fontSize: 22.0),
            ),
          ),
          body: ListView.builder(
            itemCount: CartItems.length,
            itemBuilder: (context, index){
              return CartItems[index];
            },),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final String photo;
  final String title;
  final String price;
  const OrderCard({
    @required this.photo, @required this.price, @required this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:12.0),
            child: Card(
              color: Colors.white,
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                height: 280.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            height: 200.0,
                            width: 180.0,
                            child: Image(image: AssetImage(photo),fit: BoxFit.fitHeight),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0)
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 35.0,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 0.0,
                            ),
                            Text(
                              title,
                              style: GoogleFonts.roboto(fontSize: 25.0, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              price,
                              style: GoogleFonts.roboto(fontSize: 25.0, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Quantity: ',
                          style: GoogleFonts.roboto(fontSize: 25.0, fontWeight: FontWeight.w400),
                        ),
                        Icon(AntDesign.minus, color: Colors.red, size: 30.0,),
                        Text(
                          '2',
                          style: GoogleFonts.roboto(fontSize: 25.0, fontWeight: FontWeight.w600),
                        ),
                        Icon(AntDesign.plus, color: Colors.green, size: 30.0,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -8,
            right: -8,
            child: Card(
              elevation: 5.0,
              shape: CircleBorder(),
              child: Icon(MaterialIcons.delete, size: 45.0, color: Colors.red,),
            ),
          ),
        ],
      ),
    );
  }
}
