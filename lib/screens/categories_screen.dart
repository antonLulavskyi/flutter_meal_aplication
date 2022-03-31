import 'package:flutter/material.dart';
import 'package:flutter_meal_aplication/models/category_model.dart';
import 'package:flutter_meal_aplication/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  // List of Categories
  final categories = kCategoriesData;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text('Categories', style: textTheme.titleLarge),),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          width: screenSize.width * 0.9,
          height: screenSize.height,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500, // width
              mainAxisExtent: 200, // height
              childAspectRatio: 2/3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryItem(title: categories[index].title, backgroundColor: categories[index].color);
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Text('+'),),
    );
  }
}
