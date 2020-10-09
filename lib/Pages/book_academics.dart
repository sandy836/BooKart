import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BookAcademics extends StatefulWidget {
  @override
  _BookAcademicsState createState() => _BookAcademicsState();
}

class _BookAcademicsState extends State<BookAcademics> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
      height: 320.0,
      child: Card(
        child: Container(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(top: 10.0, left: 10.0),
                  child: Text(
                    "Shop by Academics",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                thickness: 1.0,
              ),
              Row()
            ],
          ),
        ),
      ),
    );
  }
}
