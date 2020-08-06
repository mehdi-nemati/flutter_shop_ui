import 'package:flutter/material.dart';
import 'package:my_sample_shop/models/categoryModel.dart';

Widget categoryList(List<CategoryModel> items, Size screenSize) {
  return new Wrap(
      children: items
          .map((item) => categoryCartWidget(
              item.iconName, item.iconColor, item.title, screenSize))
          .toList());
}

Widget categoryCartWidget(
    IconData icon, Color iconColor, String title, Size screenSize) {
  return new Container(
    width: screenSize.width / 4,
    height: screenSize.width / 6,
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Icon(
          icon,
          color: iconColor,
          size: 27,
        ),
        SizedBox(
          height: 5,
        ),
        new Text(
          title,
          style: TextStyle(color: Color(0xff0d0d0d)),
        )
      ],
    ),
  );
}
