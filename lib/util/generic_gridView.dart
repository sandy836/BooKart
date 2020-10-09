import 'package:BooKart/Models/card_model.dart';
import 'package:BooKart/Pages/fetch_data.dart';
import 'package:BooKart/util/generic_app_bar.dart';
import 'package:BooKart/util/generic_card.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenericGridView extends StatefulWidget {
  @override
  _GenericGridViewState createState() => _GenericGridViewState();
}

class _GenericGridViewState extends State<GenericGridView> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: GenericAppBar(
          appBarName: "BookList",
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: FutureBuilder(
        future: getData(),
        builder:
            (BuildContext context, AsyncSnapshot<List<CardModel>> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return GridView.builder(
              padding: const EdgeInsets.all(5.0),
              itemCount: snapshot.data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      (orientation == Orientation.portrait) ? 2 : 3),
              itemBuilder: (BuildContext context, int index) {
                return CardWidget(
                    httpResponseData: snapshot.data, index: index);
              },
            );
          }
        },
      ),
    );
  }
}
