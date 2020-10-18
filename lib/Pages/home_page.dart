import 'package:BooKart/Models/card_model.dart';
import 'package:BooKart/Pages/custom_circular_progess.dart';
import 'package:BooKart/Pages/navigation_bar_bottom.dart';
import 'package:flutter/services.dart';
import 'package:BooKart/Pages/book_by_exam_category.dart';
import 'package:BooKart/Pages/drawer.dart';
import 'package:BooKart/Pages/fetch_data.dart';
import 'package:BooKart/Pages/slider.dart';
import 'package:BooKart/util/generic_listView.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          actions: <Widget>[],
          title: Text(
            "Bookart",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          iconTheme: new IconThemeData(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: FutureBuilder(
        future: getData(),
        builder:
            (BuildContext context, AsyncSnapshot<List<CardModel>> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CustomCircularProgressWidget(),
            );
          } else {
            return ListView(
              shrinkWrap: true,
              children: [
                SliderCarousel(),
                BookExamCategory(),
                GenericListView(cardModel: snapshot.data, align: 1)
              ],
            );
          }
        },
      ),
      bottomNavigationBar: NavigationBarButtom(),
      drawer: DrawerWidget(),
    );
  }
}
