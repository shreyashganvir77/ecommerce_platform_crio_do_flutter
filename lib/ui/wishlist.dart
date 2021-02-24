import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> favorite = [
  FavoriteCard(
    image: 'images/perfume.jpg',
    price: '₹ 40',
    name: 'Perfume',
  ),
  FavoriteCard(
    name: 'Dress',
    image: 'images/dress.jpg',
    price: '₹ 2000',
  ),
  FavoriteCard(
    name: 'Heel Sandle',
    image: 'images/heels.jpg',
    price: '₹2499',
  ),
  FavoriteCard(
    name: 'Shoes',
    image: 'images/shoes.jpg',
    price: '₹4499',
  ),
];

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            'Wishlist',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: favorite.length,
          itemBuilder: (context, index) {
            return favorite[index];
          },
        ),
      ),
    );
  }
}

class FavoriteCard extends StatefulWidget {
  final String image;
  final String price;
  final String name;
  const FavoriteCard({
    @required this.name,
    @required this.image,
    @required this.price,
    Key key,
  }) : super(key: key);

  @override
  _FavoriteCardState createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  Color _color = Colors.grey;
  @override

  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      color: Colors.white,
      elevation: 4.0,
      borderOnForeground: true,
      child: Container(
        height: 180.0,
        width: 400.0,
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Image(
                image: AssetImage(widget.image),
                fit: BoxFit.fill,
                width: 170.0,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 180.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _color = Colors.pink;
                          });
                        },
                        child: Icon(
                          Icons.favorite,
                          size: 25.0,
                          color: _color,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Container(
                  width: 200.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 40.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          boxShadow: kElevationToShadow[4],
                        ),
                        child: Center(
                          child: Text(
                            widget.price,
                            style: TextStyle(
                              fontSize: 21.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.purple[300],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                          boxShadow: kElevationToShadow[4],
                        ),
                        child: Center(
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
