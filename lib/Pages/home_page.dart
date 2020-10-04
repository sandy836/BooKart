import 'package:BooKart/Models/card_model.dart';
import 'package:BooKart/Pages/book_category.dart';
import 'package:BooKart/Pages/drawer.dart';
import 'package:BooKart/Pages/fetch_data.dart';
import 'package:BooKart/Pages/slider.dart';
import 'package:BooKart/Pages/horizontal_listView.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "BooKart",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          iconTheme: new IconThemeData(color: Colors.white)),
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
            return ListView(
              children: [
                SliderCarousel(),
                BookCategory(),
                HorizontalListView(cardModel: snapshot.data),
                HorizontalListView(cardModel: snapshot.data),
                HorizontalListView(cardModel: snapshot.data),
              ],
            );
          }
        },
      ),
      drawer: DrawerWidget(),
    );
  }
}
