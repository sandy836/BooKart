import 'package:BooKart/Pages/card_view_property.dart';
import 'package:BooKart/Pages/drawer.dart';
import 'package:BooKart/Pages/fetch_data.dart';
import 'package:BooKart/Pages/horizontal_listView.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: avoid_init_to_null
  var data = null;

  @override
  void initState() {
    super.initState();
    var _fetchDataObj = new FetchData();
    data = _fetchDataObj.getData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "BooKart",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          iconTheme: new IconThemeData(color: Colors.white)),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          HorizontalListView(
            cardViewProperty:
                CardViewProperty(httpResponseData: data, length: 10),
          ),
          HorizontalListView(
            cardViewProperty:
                CardViewProperty(httpResponseData: data, length: 10),
          ),
          HorizontalListView(
            cardViewProperty:
                CardViewProperty(httpResponseData: data, length: 10),
          ),
          HorizontalListView(
            cardViewProperty:
                CardViewProperty(httpResponseData: data, length: 10),
          ),
          HorizontalListView(
            cardViewProperty:
                CardViewProperty(httpResponseData: data, length: 10),
          )
        ],
      ),
      drawer: DrawerWidget(),
    );
  }
}
