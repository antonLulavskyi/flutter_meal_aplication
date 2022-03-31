import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color backgroundColor;

  const CategoryItem(
      {Key? key, required this.title, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 200,
      padding: const EdgeInsets.all(16),
      child: Text(title),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          backgroundColor.withOpacity(0.5), // from color
          backgroundColor // to color
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        borderRadius: BorderRadius.circular(16),
      ),
      
    );
  }
}
