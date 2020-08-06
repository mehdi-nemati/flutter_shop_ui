import 'package:flutter/material.dart';
import 'package:my_sample_shop/models/advertiseModel.dart';
import 'package:my_sample_shop/models/categoryModel.dart';
import 'package:my_sample_shop/models/sliderModel.dart';
import 'package:my_sample_shop/widgets/categories.dart';
import 'package:my_sample_shop/widgets/categories.dart';
import 'package:my_sample_shop/widgets/drawer.dart';
import 'package:my_sample_shop/widgets/horizentalList.dart';
import 'package:my_sample_shop/widgets/listOfDiscount.dart';
import 'package:my_sample_shop/widgets/slider.dart';

class MainShopPage extends StatefulWidget {
  @override
  _MainShopPageState createState() => _MainShopPageState();
}

class _MainShopPageState extends State<MainShopPage> {
   int currentPositionSlider = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    onPageChangedSlider(int position) {
      setState(() {
        currentPositionSlider = position;
      });
    }

    return Scaffold(
        appBar: new AppBar(
          title: new Text("فروشگاه من"),
          centerTitle: true,
          backgroundColor: Color(0xff7d9abd),
          elevation: 0,
          toolbarOpacity: .9,
         // leading: new Icon(Icons.menu),
          actions: <Widget>[
            new Container(
              // padding: const EdgeInsets.symmetric(horizontal: 20),
              width: 35,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  new Icon(Icons.notifications_active),
                  Positioned(
                    right: 1,
                    top: 13,
                    child: new Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: new Center(
                        child: new Text(
                          "3",
                          style: new TextStyle(
                              color: Colors.white, fontFamily: "Vazir"),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              width: 35,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  new Icon(Icons.message),
                  Positioned(
                    right: 1,
                    top: 13,
                    child: new Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: new Center(
                        child: new Text(
                          "12",
                          style: new TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Vazir"),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              width: 35,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  new Icon(Icons.shopping_basket),
                  Positioned(
                    right: 1,
                    top: 13,
                    child: new Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey,
                      ),
                      child: new Center(
                        child: new Text(
                          '2',
                          style: new TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Vazir"),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        drawer: buildDrawerLayout(context),
        body: new Container(
            child: new SingleChildScrollView(
                child: Column(children: <Widget>[
        //  slider(onPageChangedSlider, currentPositionSlider, sliderList, size,context),

             SizedBox(height: 14,),
            new Container(
              child: new Text("دسته بندی فروشگاه",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black54),),
            ),

          categoryList(listOfCategory,size),

           SizedBox(height: 22,),
           new Container(
            child: new Text("پرفروش هفته",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black54),),
          ),
          SizedBox(height: 10,),
          listOfHorizental(),

           SizedBox(height: 20,),
           new Container(
             padding: const EdgeInsets.symmetric(horizontal: 10),
              child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
             new Text("تخفیفات",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
             new Text("مشاهده بیشتر",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Colors.blue[800]),),

            ],
          )
        ),
listOfDiscount(advertiseList,size,context)
        ]
        )
        )
        )
        );
  }
}
