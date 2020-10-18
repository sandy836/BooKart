import 'package:BooKart/util/const.dart';
import 'package:flutter/material.dart';

class ProductDispalyWidget extends StatelessWidget {
  const ProductDispalyWidget({
    Key key,
    @required this.productUrl,
    @required this.index,
    @required this.productRating,
  }) : super(key: key);

  final String productUrl;
  final int index;
  final double productRating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: 400.0,
      child: Stack(
        children: [
          Container(
            height: 250.0,
            width: 400.0,
            child: FadeInImage(
              placeholder: AssetImage(baseIconDir + "default.png"),
              image: NetworkImage(productUrl),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10.0, right: 15.0),
            alignment: Alignment.topRight,
            child: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.white70,
              child: (this.index % 2 == 0)
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
            padding: const EdgeInsets.only(top: 65.0, right: 15.0),
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
            padding: const EdgeInsets.only(left: 20.0, bottom: 15.0),
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
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
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
    );
  }
}
