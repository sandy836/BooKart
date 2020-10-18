import 'package:BooKart/Pages/cart.dart';
import 'package:BooKart/Pages/home_page.dart';
import 'package:flutter/material.dart';

class NavigationBarButtom extends StatelessWidget {
  const NavigationBarButtom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        print(value);
        if (value == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        } else {
          if (value == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartWidget(),
              ),
            );
          }
        }
      },
      backgroundColor: Colors.blue,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black),
          // ignore: deprecated_member_use
          title: Text(
            "Home",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.black),
          // ignore: deprecated_member_use
          title: Text(
            "Search",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart, color: Colors.black),
          // ignore: deprecated_member_use
          title: Text(
            "Cart",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
