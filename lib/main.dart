import 'package:BooKart/Pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BooKart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      // routes: <String, WidgetBuilder>{
      //   "/BookList": (BuildContext context) => GenericGridView(),
      // },
    ),
  );
}
