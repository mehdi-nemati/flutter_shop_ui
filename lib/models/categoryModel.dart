import 'package:flutter/material.dart';

class CategoryModel {
  CategoryModel({this.iconName,this.iconColor, this.title});
  IconData iconName;
  String title;
  Color iconColor;
}
final List<CategoryModel> listOfCategory = [
  new CategoryModel(iconName: Icons.camera,iconColor: Colors.red,title: "دیجیتال"),
  new CategoryModel(iconName: Icons.gamepad,iconColor: Color(0xffc42dce),title: "تبلت"),
  new CategoryModel(iconName: Icons.computer,iconColor: Color(0xff803b81),title: "گیتار"),
  new CategoryModel(iconName: Icons.desktop_mac,iconColor: Color(0xff404be3),title: "مونوپاد"),
  new CategoryModel(iconName: Icons.favorite_border,iconColor: Color(0xff9f888d),title: "ظرفشویی"),
  new CategoryModel(iconName: Icons.school,iconColor: Color(0xff351c38),title: "کتری"),
  new CategoryModel(iconName: Icons.note_add,iconColor: Color(0xff421a92),title: "مایکروویو"),
  new CategoryModel(iconName: Icons.photo_camera,iconColor: Color(0xffc051ff),title: "مانتو"),
  new CategoryModel(iconName: Icons.phone_android,iconColor: Color(0xff39beff),title: "موبایل"),
  new CategoryModel(iconName: Icons.fastfood,iconColor: Colors.orange,title: "گیتار"),
  new CategoryModel(iconName: Icons.shopping_basket,iconColor: Colors.redAccent,title: "مونوپاد"),
  new CategoryModel(iconName: Icons.mode_edit,iconColor: Colors.lightBlue,title: "تبلت"),
];
