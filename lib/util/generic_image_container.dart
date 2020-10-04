import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenericImageContainer extends StatefulWidget {
  String imagesName = "";
  String baseImageDir = "";
  GenericImageContainer(
      {Key key, @required this.imagesName, @required this.baseImageDir});
  @override
  _GenericImageContainerState createState() => _GenericImageContainerState();
}

class _GenericImageContainerState extends State<GenericImageContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          image: AssetImage(widget.baseImageDir + widget.imagesName),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
