import 'package:flutter/material.dart';
import 'package:my_sample_shop/models/advertiseModel.dart';
import 'package:my_sample_shop/widgets/ratingBar.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

Widget listOfDiscount(
    List<AdvertiseModel> advertises, Size screenSize, BuildContext context) {
  return new Wrap(
      children: advertises
          .map(
            (item) => listOfDiscountCard(item, screenSize, context),
          )
          .toList());
}

Widget listOfDiscountCard(
    AdvertiseModel item, Size screenSize, BuildContext context) {
  return new Container(
    width: screenSize.width / 2 - 20,
    height: screenSize.width / 2.1,
    margin: new EdgeInsets.all(10.0),
    decoration: new BoxDecoration(
      color: Colors.white,
      border: Border.all(width: 1.0, color: Colors.black26),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 0.11,
          offset: Offset(
            0.5,
            0.5,
          ),
        )
      ],
    ),
    child: new Stack(
      children: <Widget>[
        //image
        new Container(
            height: screenSize.width / 2.4 - 30,
            width: screenSize.width,
            child: new Image(
              image: AssetImage(item.pictureName),
              fit: BoxFit.cover,
            )),
        //discount
        Container(
          width: 50,
          height: 20,
          decoration: new BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.0)),
          ),
          child: new Center(
              child: new Text(
            item.id.toString() + "٪‌",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13),
          )),
        ),
        //title
        Positioned(
          top: screenSize.width / 2.5 - 20,
          right: 10,
          width: screenSize.width * .40,
          child: new Text(
            item.title,
            overflow: TextOverflow.ellipsis,
            style:
                TextStyle(fontWeight: FontWeight.w500, color: Colors.black87),
          ),
        ),
        //price
        Positioned(
          bottom: 6,
          left: 10,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Text(
                NumberUtility.seRagham(item.price.toString()),
                style: TextStyle(color: Colors.black87),
              ),
              new Text(" تومان"),
            ],
          ),
        ),
        //star
        Positioned(top: 3, left: 3, child: ratingBar((item.id % 5).toDouble())),

        Positioned(
            bottom: 6,
            right: 10,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Text(item.count.toString(),
                    style: TextStyle(fontWeight: FontWeight.w700)),
                new Text(" خرید"),
              ],
            )),
      ],
    ),
  );
}
