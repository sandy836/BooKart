import 'package:BooKart/Models/card_model.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {Key key, @required this.httpResponseData, @required this.index})
      : super(key: key);

  final List<CardModel> httpResponseData;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(3.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Image.network(
          httpResponseData[index].url,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
