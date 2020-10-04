import 'package:BooKart/Models/card_model.dart';
import 'package:BooKart/Pages/cart.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HorizontalListView extends StatefulWidget {
  List<CardModel> cardModel;
  HorizontalListView({Key key, @required this.cardModel}) : super(key: key);
  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  @override
  Widget build(BuildContext context) {
    var httpResponseData = widget.cardModel;
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      height: 200.0,
      child: ListView.builder(
        itemCount: httpResponseData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => Container(
          width: 300.0,
          child: CardWidget(
            httpResponseData: httpResponseData,
            index: index,
          ),
        ),
      ),
    );
  }
}
