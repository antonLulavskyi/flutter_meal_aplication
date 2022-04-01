import 'package:flutter/material.dart';
import 'package:flutter_meal_aplication/models/meals_provider.dart';
import 'package:flutter_meal_aplication/widgets/meal_item.dart';
import 'package:provider/provider.dart';
import '../models/categories_provider.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meal';
  final int index;
  const CategoryMealsScreen({ Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final categoriesData = Provider.of<Categories>(context).categoriesData;
    final providerMealData = Provider.of<Meals>(context).meals;

    return Scaffold(
      appBar: AppBar(title: Text(categoriesData[index].title)),
      body: ListView.builder(
        itemCount: providerMealData.length,
        itemBuilder: (context, index) {
          return MealItem(index: index);
        }
        ),
    );
  }
}