import 'package:flutter/material.dart';
import 'package:shopping_app_ui/ProductCart.dart';
import 'package:shopping_app_ui/CustomIcon.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  List<Widget> bottomNavIconList = [
    Image.asset(
      "assets/shoes_04.png",
      width: 35.0,
      height: 35.0,
    ),
    Icon(
      CustomIcons.search,
      size: 20.0,
    ),
    Icon(
      CustomIcons.favorite,
      size: 20.0,
    ),
    Icon(
      CustomIcons.cart,
      size: 20.0,
    ),
    Image.asset(
      "assets/shoes.png",
      width: 35.0,
      height: 35.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 25.0),
              child: Image.asset(
                "assets/logo.png",
                width: 50,
                height: 30,
              ),
            ),
          ),
          ProductCart(0xFFfaecfb, "assets/shoes_01.png", "Hybrid Rocket WNS",
              "\$999.0", "\$749"),
          SizedBox(
            height: 10.0,
          ),
          ProductCart(0xFFf8e1da, "assets/shoes_03.png", "Hybrid Runner ARS",
              "\$699.0", "\$599"),
        ],
      ),
      bottomNavigationBar: Container(
        height: 15,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.065),
            offset: Offset(0.0, -3.0),
            blurRadius: 10.0,
          ),
        ]),
        child: Row(
          children: bottomNavIconList.map((item) {
            var index = bottomNavIconList.indexOf(item);
            return Expanded(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: bottomNavItem(item, index == _currentIndex),
            ));
          }).toList(),
        ),
      ),
    );
  }
}

bottomNavItem(Widget item, bool isSelected) => Container(
  decoration: BoxDecoration(
    boxShadow: isSelected? [
      BoxShadow(
        color: Colors.black12.withOpacity(.02),
        offset: Offset(0.0, 5.0),
        blurRadius: 10.0)
    ]
:[]  ),
      child: item,
);

