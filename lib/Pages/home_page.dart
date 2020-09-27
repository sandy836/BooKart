import 'package:BooKart/Pages/drawer.dart';
import 'package:BooKart/Pages/horizontal_listView.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
      body: HorizontalListView(),
      drawer: DrawerWidget(),
    );
  }
}
