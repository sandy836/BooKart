import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenericIconContainer extends StatefulWidget {
  String imagesName = "";
  String baseImageDir = "";
  String iconName = "";
  GenericIconContainer(
      {Key key,
      @required this.imagesName,
      @required this.baseImageDir,
      @required this.iconName});
  @override
  _GenericIconContainerState createState() => _GenericIconContainerState();
}

class _GenericIconContainerState extends State<GenericIconContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 40.0,
          width: 40.0,
          margin: const EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            image: DecorationImage(
              image: AssetImage(widget.baseImageDir + widget.imagesName),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 2.0,
        ),
        Text(
          widget.iconName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 8.0),
        )
      ],
    );
  }
}
