import 'package:BooKart/util/generic_icon_container.dart';
import 'package:flutter/material.dart';
import 'package:BooKart/util/const.dart';

class BookExamCategory extends StatefulWidget {
  @override
  _BookExamCategoryState createState() => _BookExamCategoryState();
}

class _BookExamCategoryState extends State<BookExamCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
      height: 350.0,
      child: Card(
        child: Container(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(top: 10.0, left: 10.0),
                  child: Text(
                    "Shop by Exams Category",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GenericIconContainer(
                    baseImageDir: baseImageDir,
                    imagesName: "upsc_.png",
                    iconName: "UPSC",
                  ),
                  GenericIconContainer(
                    baseImageDir: baseImageDir,
                    imagesName: "banking_.png",
                    iconName: "Banking",
                  ),
                  GenericIconContainer(
                    baseImageDir: baseImageDir,
                    imagesName: "govt_.png",
                    iconName: "Govt Exam",
                  ),
                  GenericIconContainer(
                    baseImageDir: baseImageDir,
                    imagesName: "law_.png",
                    iconName: "Law",
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GenericIconContainer(
                    baseImageDir: baseImageDir,
                    imagesName: "engineering_.png",
                    iconName: "Engineering",
                  ),
                  GenericIconContainer(
                    baseImageDir: baseImageDir,
                    imagesName: "management_.png",
                    iconName: "Management",
                  ),
                  GenericIconContainer(
                    baseImageDir: baseImageDir,
                    imagesName: "medical_.png",
                    iconName: "Medical",
                  ),
                  GenericIconContainer(
                    baseImageDir: baseImageDir,
                    imagesName: "administration_.png",
                    iconName: "State Exam",
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GenericIconContainer(
                    baseImageDir: baseImageDir,
                    imagesName: "entrance_.png",
                    iconName: "Foreign Exam",
                  ),
                  GenericIconContainer(
                    baseImageDir: baseImageDir,
                    imagesName: "defence_.png",
                    iconName: "Defence",
                  ),
                  GenericIconContainer(
                    baseImageDir: baseImageDir,
                    imagesName: "software_.png",
                    iconName: "  Software\nCertifaction",
                  ),
                  GenericIconContainer(
                    baseImageDir: baseImageDir,
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
