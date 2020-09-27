import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HorizontalListView extends StatefulWidget {
  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  var url = "https://jsonplaceholder.typicode.com/photos";
  // ignore: avoid_init_to_null
  var data = null;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 5.0),
        height: 200.0,
        child: data != null
            ? ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => Container(
                  width: 300.0,
                  child: Card(
                    margin: const EdgeInsets.all(3.0),
                    elevation: 8.0,
                    shadowColor: Colors.grey[500],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.network(
                        data[index]["url"],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}
