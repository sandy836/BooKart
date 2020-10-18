import 'package:BooKart/Pages/custom_circular_progess.dart';
import 'package:BooKart/Pages/fetch_data.dart';
import 'package:flutter/material.dart';
import 'package:BooKart/util/generic_listView.dart';

class SimilarProductWidget extends StatelessWidget {
  final String productType;
  const SimilarProductWidget({Key key, @required this.productType})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (!snapshot.hasData) {
            return CustomCircularProgressWidget();
          } else {
            return GenericListView(cardModel: snapshot.data, align: 1);
          }
        },
      ),
    );
  }
}
