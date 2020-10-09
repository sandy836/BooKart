import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Sandip Shrivastava",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            accountEmail: Text(
              "sandeepshrivastava518@gmail.com",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60")),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart_sharp),
            title: Text(
              "Cart",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text(
              "Nortifications",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: Icon(Icons.train),
            title: Text(
              "Track Order",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(Icons.lock_outlined),
            title: Text(
              "Change Password",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text(
              "Refer & Earn",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text(
              "Contact Us",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text(
              "About Us",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(Icons.star_border_outlined),
            title: Text(
              "Rate Us",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text(
              "Share App",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text(
              "FAQ",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(Icons.book_sharp),
            title: Text(
              "Terms & Condition",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text(
              "Privacy Policy",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
