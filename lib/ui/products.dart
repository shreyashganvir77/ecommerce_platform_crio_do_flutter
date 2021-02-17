import 'package:ecommerce_platform_crio_do/ui/description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

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

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> with SingleTickerProviderStateMixin {
  bool _open = false;
  Animation<double> _animation;
  Animation<double> _animatedIcon;
  Animation<Color> _animationColor;
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 500),)
    ..addListener(() {
      setState(() {

      });
    });
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
    _animationColor = ColorTween(begin: Colors.deepPurple, end: Colors.red).animate(_animationController);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              'Porsio',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            actions: [
              Icon(
                Icons.shopping_cart,
                size: 28.0,
              ),
              SizedBox(
                width: 20.0,
              ),
            ],
            elevation: 0.0,
            backgroundColor: Colors.deepPurple,
          ),
          floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            visible: true,
            backgroundColor: _animationColor.value,
            overlayColor: Colors.black,
            curve: Curves.bounceIn,
            elevation: 8.0,
            shape: CircleBorder(),
            children: [
              SpeedDialChild(
                child: Icon(FontAwesome.sort, color: Colors.black, size: 25.0,),
                backgroundColor: Colors.purple[300],
                onTap: () => print('SECOND CHILD'),
              ),
              SpeedDialChild(
                  child: Icon(AntDesign.filter, color: Colors.black),
                  backgroundColor: Colors.purple[300],
                  onTap: () => print('FIRST CHILD'),
              ),
            ],
          ),
          body: Column(
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
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: favorite.length,
                    itemBuilder: (context, index) {
                      return favorite[index];
                    }),
              ),
            ],
          )),
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
  @override
  Color _color = Colors.grey;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Description(),),);
      },
      child: Card(
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
      ),
    );
  }
}
