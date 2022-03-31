import 'package:flutter/material.dart';
import 'package:flutter_meal_aplication/models/category_model.dart';
import 'package:flutter_meal_aplication/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({Key? key}) : super(key: key);

  // List of Categories
  final categories = CATEGORIES_DATA;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('Meals App')),
      body: Center(
        child: SizedBox(
          width: screenSize.width * 0.8,
          height: screenSize.height * 0.8,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              childAspectRatio: 2/3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              mainAxisExtent: 400,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryItem(title: categories[index].title, backgroundColor: categories[index].color);
            },
          ),
        ),
      ),
    );
  }
}
