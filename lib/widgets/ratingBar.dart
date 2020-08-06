import 'package:flutter/material.dart';

Widget ratingBar(double rating, {starCount = 5, color = Colors.orangeAccent}) {
  BuildContext context;
  Widget buildStar(BuildContext context, int index) {
    IconData icName = Icons.star;
    Color icColor = color;

    if (index >= rating) {
      icName = Icons.star_border;
      icColor = color.withOpacity(0.9);
    } else if (index > rating - 1 && index < rating) {
      icName = Icons.star_half;
    }

    return Icon(icName, size: 12.0, color: icColor);
  }

  return Row(
    children: List.generate(starCount, (i) => buildStar(context, i)),
  );
}
