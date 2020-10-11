import 'package:BooKart/Models/card_model.dart';
import 'package:BooKart/Pages/fetch_data.dart';
import 'package:BooKart/Pages/product_detail.dart';
import 'package:BooKart/util/generic_card.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class GenericGridView extends StatefulWidget {
  @override
  _GenericGridViewState createState() => _GenericGridViewState();
}

class _GenericGridViewState extends State<GenericGridView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    ContainerTransitionType _transitionType = ContainerTransitionType.fade;
    var size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight * 2.0 - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          title: Text(
            "BookList",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          iconTheme: new IconThemeData(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: getData(),
        builder:
            (BuildContext context, AsyncSnapshot<List<CardModel>> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return GridView.builder(
              padding: const EdgeInsets.only(top: 5.0),
              shrinkWrap: true,
              itemCount: snapshot.data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: (itemWidth / itemHeight),
                crossAxisCount: 2,
              ),
              itemBuilder: (BuildContext context, int index) {
                return OpenContainer(
                  tappable: false,
                  transitionType: _transitionType,
                  closedBuilder: (context, openContainer) {
                    return CardWidget(
                        httpResponseData: snapshot.data,
                        index: index,
                        openContainer: openContainer);
                  },
                  openBuilder: (context, openContainer) =>
                      ProductDetail(productDetails: snapshot.data[index]),
                );
              },
            );
          }
        },
      ),
    );
  }
}
