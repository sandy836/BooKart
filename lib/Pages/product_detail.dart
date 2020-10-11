import 'package:BooKart/Models/card_model.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key key, @required this.productDetails})
      : super(key: key);
  final CardModel productDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Image.network(productDetails.url),
            )
          ],
        ),
      ),
    );
  }
}
