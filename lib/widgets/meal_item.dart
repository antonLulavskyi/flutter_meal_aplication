import 'package:flutter/material.dart';
import 'package:flutter_meal_aplication/models/categories_provider.dart';
import 'package:provider/provider.dart';

import '../models/meal_model.dart';
import '../models/meals_provider.dart';

class MealItem extends StatelessWidget {
  final int index;
  final List<Meal> categoriesMeal; // Filtered category Meals passed from Category Meals Screen
  const MealItem({Key? key, required this.index, required this.categoriesMeal}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final providerDataMeal = Provider.of<Meals>(context).meals;
    final providerDataCategories = Provider.of<Categories>(context);

    Size screenSize = MediaQuery.of(context).size;
    //print(providerDataCategories.categoriesData[index].title);

    return SizedBox(
      width: screenSize.width * 0.8,
      height: screenSize.height * 0.3,
      child: Card(
        child: Column(children: [
          Center(child: Text(categoriesMeal[index].title),),
          //Image.network(providerDataMeal[index].imageUrl,),
        ]),
      ),
    );
  }
}
