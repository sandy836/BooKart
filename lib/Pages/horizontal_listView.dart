import 'package:BooKart/Pages/card_view_property.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore: must_be_immutable
class HorizontalListView extends StatefulWidget {
  // ignore: avoid_init_to_null
  CardViewProperty cardViewProperty = null;
  HorizontalListView({Key key, @required this.cardViewProperty})
      : super(key: key);
  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  // var url = "https://jsonplaceholder.typicode.com/photos";
  // // ignore: avoid_init_to_null
  // var data = null;

  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }

  // getData() async {
  //   var res = await http.get(url);
  //   data = jsonDecode(res.body);
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    var httpResponseData = widget.cardViewProperty;
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      height: 200.0,
      child: httpResponseData.httpResponseData != null
          ? ListView.builder(
              itemCount: httpResponseData.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => Container(
                width: 300.0,
                child: Card(
                  margin: const EdgeInsets.all(3.0),
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      httpResponseData.httpResponseData[index]["url"],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
