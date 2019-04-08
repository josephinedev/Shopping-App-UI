import 'package:flutter/material.dart';
import 'CustomIcon.dart';

class ProductCart extends StatelessWidget{

  int cardColor;
  String imgUrl;
  String title;
  String previousPrice;
  String price;

  ProductCart(
      this.cardColor, this.imgUrl, this.title, this.previousPrice,this.price
      );
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: 250.0,
      decoration: BoxDecoration(
          color: Color(cardColor),
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
              color: Colors.grey.withOpacity(.6), width: .2
          )
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Image.asset(imgUrl, width: 150, height: 150),
          Text(title,
              style: TextStyle(fontSize: 20.0, fontFamily: "Trajan Pro")
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(CustomIcons.favorite),
                    onPressed: (){}
                ),
                Column(
                  children: <Widget>[
                    Text(previousPrice,
                      style: TextStyle(
                          color: Color(0xFFfeb0ba),
                          fontSize: 16.0,
                          fontFamily: "Halvetica"
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(price,
                      style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: "Halvetica"
                      ),
                    ),
                  ],
                ),
                IconButton(
                    icon: Icon(CustomIcons.cart),
                    onPressed: (){}
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}