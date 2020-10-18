import 'package:BooKart/Pages/navigation_bar_bottom.dart';
import 'package:BooKart/Pages/product/product_display.dart';
import 'package:BooKart/Pages/product/product_feature.dart';
import 'package:BooKart/Pages/product/similar_product.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final double productRating;
  final String productName;
  final String productUrl;
  final int productPrice;
  final double productOffpercent;
  final int index;

  ProductDetail(
      {Key key,
      @required this.productRating,
      @required this.productName,
      @required this.index,
      @required this.productUrl,
      @required this.productPrice,
      @required this.productOffpercent})
      : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 550,
              padding: const EdgeInsets.only(top: 5.0, right: 5.0, left: 5.0),
              child: Column(
                children: [
                  ProductDispalyWidget(
                    index: widget.index,
                    productRating: widget.productRating,
                    productUrl: widget.productUrl,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ProductFeatureWidget(
                    productPrice: widget.productPrice,
                    productOffpercent: widget.productOffpercent,
                    productName: widget.productName,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Expanded(
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
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(
                    thickness: 1.0,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Similar Books",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            SimilarProductWidget(
              productType: "",
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarButtom(),
    );
  }
}
