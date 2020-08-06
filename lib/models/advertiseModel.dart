class AdvertiseModel {
  String title;
  int price;
  int count;
  String pictureName;
  int id;
  String description;

  AdvertiseModel(
      {this.title, this.price, this.count, this.pictureName, this.id});
}

final List<AdvertiseModel> advertiseList = [
  new AdvertiseModel(id: 1,count: 1,price: 12000,title: "شارژر همراه راو",pictureName: "assets/products/1.jpg"),
  new AdvertiseModel(id: 2,count: 3,price: 14500,title: "چیپس کچاپ",pictureName: "assets/products/2.jpg"),
  new AdvertiseModel(id: 3,count: 4,price: 250000,title: "گیرنده آنالوگ",pictureName: "assets/products/3.jpg"),
  new AdvertiseModel(id: 4,count: 112,price: 14000,title: "تلویزیون ال ای دی",pictureName: "assets/products/4.jpg"),
  new AdvertiseModel(id: 5,count: 65,price: 52000,title: "هدفون زاکسلانگ",pictureName: "assets/products/5.jpg"),
  new AdvertiseModel(id: 6,count: 84,price: 95500,title: "هدفون G18",pictureName: "assets/products/6.jpg"),
  new AdvertiseModel(id: 7,count: 12,price: 680000,title: "پایه نگهدارنده",pictureName: "assets/products/7.jpg"),
  new AdvertiseModel(id: 8,count: 77,price: 9000,title: "گوشی موبایل",pictureName: "assets/products/8.jpg"),
  new AdvertiseModel(id: 9,count: 1,price: 77000,title: "گیرنده آنالوگ",pictureName: "assets/products/9.jpg"),
];