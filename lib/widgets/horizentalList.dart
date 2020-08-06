  import 'package:flutter/material.dart';
import 'package:my_sample_shop/models/advertiseModel.dart';

Widget listOfHorizental(){

 advertiseList.sort((a, b) { return  a.title.compareTo(b.title);});

     var myList=advertiseList.map((item) {
            
           return new Container(width: 100,height: 100,
           margin: const EdgeInsets.only(left: 10),
           child: new Image(image: AssetImage(item.pictureName),fit: BoxFit.cover,),);
            }).toList();

    return new Container(
      width: double.infinity,height: 100,
      child: ListView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      children:myList
    ),
    ) ;
  }
