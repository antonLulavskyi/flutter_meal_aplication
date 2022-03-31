import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/categories_provider.dart';

class CategoryMealsScreen extends StatelessWidget {

  // final String categoryId;
  // final String categoryTitle;
  final int index;
  const CategoryMealsScreen({ Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final categoriesData = Provider.of<Categories>(context).categoriesData;

    return Scaffold(
      appBar: AppBar(title: Text(categoriesData[index].title)),
      body: Center(child: Text(categoriesData[index].title)),
    );
  }
}