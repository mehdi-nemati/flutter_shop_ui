class SliderModel {
  SliderModel({this.imageName, this.id});
  String imageName;
  int id;
}

final List<SliderModel> sliderList = [
  new SliderModel(imageName: "assets/slider/slider_4.jpg", id: 1),
  new SliderModel(imageName: "assets/slider/slider_2.jpg", id: 2),
  new SliderModel(imageName: "assets/slider/slider_5.jpg", id: 3)
];
