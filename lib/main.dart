import 'package:BooKart/Pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'BooKart',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: HomePage(),
    ),
  );
}
