import 'package:BooKart/Models/card_model.dart';
import 'package:BooKart/Pages/product_detail.dart';
import 'package:BooKart/util/generic_card.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenericListView extends StatefulWidget {
  List<CardModel> cardModel;
  var align;
  GenericListView({Key key, @required this.cardModel, @required this.align})
      : super(key: key);
  @override
  _GenericListViewState createState() => _GenericListViewState();
}

class _GenericListViewState extends State<GenericListView> {
  @override
  Widget build(BuildContext context) {
    ContainerTransitionType _transitionType =
        ContainerTransitionType.fadeThrough;
    List<CardModel> httpResponseData = widget.cardModel;
    // ignore: avoid_init_to_null
    var scrollType;
    //Horizontal
    if (widget.align == 1) {
      scrollType = Axis.horizontal;
    } else {
      scrollType = Axis.vertical;
    }
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      height: 270.0,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: httpResponseData.length,
        scrollDirection: scrollType,
        itemBuilder: (BuildContext context, int index) => Container(
          width: 180.0,
          child: OpenContainer(
              tappable: false,
              transitionType: _transitionType,
              closedBuilder: (context, openContainer) {
                return CardWidget(
                  httpResponseData: httpResponseData,
                  index: index,
                  openContainer: openContainer,
                );
              },
              openBuilder: (context, openContainer) =>
                  ProductDetail(productDetails: httpResponseData[index])),
        ),
      ),
    );
  }
}
