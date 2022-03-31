import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color backgroundColor;

  const CategoryItem(
      {Key? key, required this.title, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      //height: 200,
      padding: const EdgeInsets.all(16),
      child: Text(title, style: textTheme.headlineLarge,),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          backgroundColor.withOpacity(0.5), // from color
          backgroundColor // to color
        ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
        borderRadius: BorderRadius.circular(16),
      ),
      
    );
  }
}
