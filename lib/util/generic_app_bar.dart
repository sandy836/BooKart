import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenericAppBar extends StatefulWidget {
  String appBarName = "";
  GenericAppBar({Key key, @required this.appBarName}) : super(key: key);

  @override
  _GenericAppBarState createState() => _GenericAppBarState();
}

class _GenericAppBarState extends State<GenericAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.appBarName,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      ),
      iconTheme: new IconThemeData(color: Colors.white),
    );
  }
}
