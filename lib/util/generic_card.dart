import 'package:BooKart/Models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:BooKart/util/const.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {Key key, @required this.httpResponseData, @required this.index})
      : super(key: key);

  final List<CardModel> httpResponseData;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: FadeInImage.assetNetwork(
          placeholder: baseImageDir + "default.png",
          image: httpResponseData[index].url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
