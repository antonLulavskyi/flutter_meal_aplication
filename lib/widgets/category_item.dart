import 'package:flutter/material.dart';
import 'package:flutter_meal_aplication/models/categories_provider.dart';
import 'package:provider/provider.dart';
import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final int index;
  // final String title;
  // final Color backgroundColor;

  const CategoryItem(
      {Key? key,
      required this.index,
      // required this.title,
      // required this.backgroundColor
      })
      : super(key: key);

  void selectCategory(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => CategoryMealsScreen(
              index: index,
                  //categoryId: id,
                  //categoryTitle: title,
                ),
            fullscreenDialog: true));
  }

  @override
  Widget build(BuildContext context) {

    TextTheme textTheme = Theme.of(context).textTheme;
    final categoriesData = Provider.of<Categories>(context).categoriesData;

    return GestureDetector(
      onTap: (() => selectCategory(context)),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Text(
          categoriesData[index].title,
          style: textTheme.headlineLarge,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            categoriesData[index].color.withOpacity(0.5), // from color
            categoriesData[index].color // to color
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
