import 'package:BooKart/Models/card_model.dart';
import 'package:BooKart/util/const.dart';
import 'package:BooKart/util/generic_listView.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final double productRating;
  final String productName;
  final int productPrice;
  final double productOffpercent;
  final int index;

  ProductDetail(
      {Key key,
      @required this.productDetails,
      @required this.productRating,
      @required this.productName,
      @required this.index,
      @required this.productPrice,
      @required this.productOffpercent})
      : super(key: key);
  final List<CardModel> productDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          child: Column(
            children: [
              Container(
                height: 250.0,
                width: 400.0,
                child: Stack(
                  children: [
                    Container(
                      height: 250.0,
                      width: 400.0,
                      padding: const EdgeInsets.only(
                          top: 5.0, right: 15.0, left: 15.0),
                      child: FadeInImage(
                        placeholder: AssetImage(baseIconDir + "default.png"),
                        image: NetworkImage(productDetails[index].url),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 20.0, right: 25.0),
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.white70,
                        child: (productDetails[index].albumId % 2 == 0)
                            ? Icon(
                                Icons.favorite,
                                size: 20.0,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite,
                                size: 20.0,
                                color: Colors.grey,
                              ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 65.0, right: 25.0),
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.white70,
                        child: Icon(
                          Icons.share,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(left: 30.0, bottom: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 2.0),
                        decoration: BoxDecoration(
                          color: Colors.green[600],
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(2.0),
                            bottomRight: Radius.circular(2.0),
                          ),
                        ),
                        width: 60.0,
                        height: 25.0,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "$productRating",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              Icons.star,
                              size: 15.0,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "$productName",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(3.0),
                      color: Colors.grey[300],
                      child: Text(
                        "₹${(productPrice - (productPrice * productOffpercent)).ceil()}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25.0),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "$productPrice",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2.0,
                          decorationColor: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                          color: Colors.grey[600]),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "${(productOffpercent * 100).ceil()}% off",
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.only(left: 15.0, bottom: 10.0),
                child: Text(
                  "Hurry, Only few left!",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    children: [
                      Expanded(
                        child: RaisedButton(
                          splashColor: Colors.white54,
                          color: Colors.white,
                          onPressed: () {
                            print("Add to Cart");
                          },
                          child: Container(
                            height: 50.0,
                            child: Center(child: Text("ADD TO CART")),
                          ),
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          splashColor: Colors.white54,
                          color: Colors.orange[900],
                          onPressed: () {
                            print("Buy Now");
                          },
                          child: Container(
                            height: 50.0,
                            child: Center(child: Text("BUY NOW")),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Divider(
                thickness: 1.0,
              ),
              Container(
                padding: const EdgeInsets.only(left: 15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Similar Book",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: GenericListView(cardModel: productDetails, align: 1)),
            ],
          ),
        ),
      ),
    );
  }
}
