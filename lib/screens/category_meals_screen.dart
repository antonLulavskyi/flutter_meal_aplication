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

    // Creating a new List<Meal> that takes List of Meals and checks if a list of Categories contain 
    // exact string element, that is sitting in _kCategoriesData list as a title property, if the data matches
    // Meal is belong to this category and there for appends to the categoryMeals list.
    final categoryMeals = providerMealData.where((meal) {
      return meal.categories.contains(categoriesData[index].title);
    },).toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoriesData[index].title)),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index) {
          return MealItem(index: index, categoriesMeal: categoryMeals,);
        }
        ),
    );
  }
}