import 'package:flutter/material.dart';
import 'package:flutter_meal_aplication/widgets/category_item.dart';
import 'package:provider/provider.dart';

import '../models/categories_provider.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categories';
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    print(screenSize.width);

    final categoriesData = Provider.of<Categories>(context).categoriesData;
    final data = Provider.of<Categories>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Categories', style: textTheme.titleLarge),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          width: screenSize.width * 0.9,
          height: screenSize.height,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500, // width
              mainAxisExtent: 200, // height
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: categoriesData.length,
            itemBuilder: (context, index) {
              return CategoryItem(index: index);
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          data.addNewCategory('New Category');
        },
        child: const Text('+'),
      ),
    );
  }
}
