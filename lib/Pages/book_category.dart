import 'package:BooKart/util/generic_icon_container.dart';
import 'package:flutter/material.dart';
import 'package:BooKart/util/const.dart';

class BookCategory extends StatefulWidget {
  @override
  _BookCategoryState createState() => _BookCategoryState();
}

class _BookCategoryState extends State<BookCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
      height: 330.0,
      child: Card(
        child: Container(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(top: 10.0, left: 10.0),
                  child: Text(
                    "Books Catagory",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                thickness: 1.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GenericIconContainer(
                    baseImageDir: base_icon_dir,
                    imagesName: "upsc_.png",
                    iconName: "UPSC",
                  ),
                  GenericIconContainer(
                    baseImageDir: base_icon_dir,
                    imagesName: "banking_.png",
                    iconName: "Banking",
                  ),
                  GenericIconContainer(
                    baseImageDir: base_icon_dir,
                    imagesName: "govt_.png",
                    iconName: "Govt Exam",
                  ),
                  GenericIconContainer(
                    baseImageDir: base_icon_dir,
                    imagesName: "law_.png",
                    iconName: "Law",
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GenericIconContainer(
                    baseImageDir: base_icon_dir,
                    imagesName: "engineering_.png",
                    iconName: "Engineering",
                  ),
                  GenericIconContainer(
                    baseImageDir: base_icon_dir,
                    imagesName: "management_.png",
                    iconName: "Management",
                  ),
                  GenericIconContainer(
                    baseImageDir: base_icon_dir,
                    imagesName: "medical_.png",
                    iconName: "Medical",
                  ),
                  GenericIconContainer(
                    baseImageDir: base_icon_dir,
                    imagesName: "administration_.png",
                    iconName: "State Exam",
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GenericIconContainer(
                    baseImageDir: base_icon_dir,
                    imagesName: "entrance_.png",
                    iconName: "Foreign Exam",
                  ),
                  GenericIconContainer(
                    baseImageDir: base_icon_dir,
                    imagesName: "defence_.png",
                    iconName: "Defence",
                  ),
                  GenericIconContainer(
                    baseImageDir: base_icon_dir,
                    imagesName: "software_.png",
                    iconName: "Software",
                  ),
                  GenericIconContainer(
                    baseImageDir: base_icon_dir,
                    imagesName: "finance_.png",
                    iconName: "Finance",
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
