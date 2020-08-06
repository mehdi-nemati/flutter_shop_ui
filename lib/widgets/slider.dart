import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_sample_shop/models/sliderModel.dart';

Widget slider(Function onPageChangedSlider,int currentPositionSlider,List<SliderModel> sliderData,Size screenSize,BuildContext context){
    return new Stack(
      children: <Widget>[
        new CarouselSlider(
          onPageChanged: (position){
            onPageChangedSlider(position);
          },
          autoPlay: true,
          //aspectRatio: 16/9,
          viewportFraction: 1.0,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          pauseAutoPlayOnTouch: Duration(seconds: 10),height: screenSize.height * .27,
          // enlargeCenterPage: true,
          reverse: false,
          items: List.generate(sliderData.length, (index){
            return Container(
          width: double.infinity,
          //margin: EdgeInsets.symmetric(horizontal: 5.0),
          child: new  Image(
                image: AssetImage(sliderData[index].imageName),
                fit: BoxFit.cover,
              ),

         
          );
                
          }),
        ),
        new Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child:
          Container(
            
            decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [ Colors.white10, Colors.white], // whitish to gray
    ),
            ),

            child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(sliderData.length, (index){
              return new Container(
                width: 10,
                height: 40,
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentPositionSlider == index
                      ? Colors.lightBlue
                      : Colors.blueGrey
                ),
              );
            }),
          ) ,
          )
          ,

        )
      ],
    );

  }
   