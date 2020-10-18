import 'package:BooKart/Models/card_model.dart';
import 'package:BooKart/Models/fake_data_helper.dart';
import 'package:BooKart/Pages/custom_circular_progess.dart';
import 'package:BooKart/Pages/fetch_data.dart';
import 'package:BooKart/Pages/navigation_bar_bottom.dart';
import 'package:BooKart/Pages/product/product_detail.dart';
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
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
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
      backgroundColor: Colors.grey[200],
      body: FutureBuilder(
        future: getData(),
        builder:
            (BuildContext context, AsyncSnapshot<List<CardModel>> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CustomCircularProgressWidget());
          } else {
            return GridView.builder(
              padding: const EdgeInsets.only(top: 5.0),
              shrinkWrap: true,
              itemCount: snapshot.data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: (itemWidth / itemHeight),
                crossAxisCount: 2,
              ),
              itemBuilder: (BuildContext context, int index) {
                var fakeDate = Fake().fakeData();
                return OpenContainer(
                  tappable: false,
                  transitionType: _transitionType,
                  closedBuilder: (context, openContainer) {
                    return CardWidget(
                      httpResponseData: snapshot.data,
                      index: index,
                      openContainer: openContainer,
                      price: fakeDate[1],
                      productName: fakeDate[2],
                      rating: fakeDate[0],
                    );
                  },
                  openBuilder: (context, openContainer) => ProductDetail(
                    productName: fakeDate[2],
                    productPrice: fakeDate[1],
                    productRating: fakeDate[0],
                    productOffpercent: fakeDate[3],
                    index: index,
                    productUrl: snapshot.data[index].url,
                  ),
                );
              },
            );
          }
        },
      ),
      bottomNavigationBar: NavigationBarButtom(),
    );
  }
}
