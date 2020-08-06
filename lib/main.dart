import 'package:flutter/material.dart';
import 'package:my_sample_shop/pages/mainShopPage.dart';
import 'package:my_sample_shop/pages/onBoarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       routes: {'/mainPage': (context) => new Directionality(textDirection: TextDirection.rtl, child: new MainShopPage())},
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
         fontFamily: 'Vazir',
      ),
      // home: new Directionality(textDirection: TextDirection.rtl, child: new OnBoarding()),
      home: new Directionality(textDirection: TextDirection.ltr, child: new OnBoarding()),
      debugShowCheckedModeBanner: false,
    );
  }
}
