import 'package:BooKart/Models/card_model.dart';
import 'package:BooKart/Pages/book_academics.dart';
import 'package:BooKart/Pages/book_by_exam_category.dart';
import 'package:BooKart/Pages/drawer.dart';
import 'package:BooKart/Pages/fetch_data.dart';
import 'package:BooKart/Pages/slider.dart';
import 'package:BooKart/util/generic_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: GenericAppBar(
          appBarName: "BooKart",
        ),
      ),
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
                BookExamCategory(),
                BookAcademics(),
                // GenericListView(cardModel: snapshot.data, align: 1)
              ],
            );
          }
        },
      ),
      drawer: DrawerWidget(),
    );
  }
}
