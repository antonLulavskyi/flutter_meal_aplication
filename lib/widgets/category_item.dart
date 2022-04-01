import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:auto_size_text/auto_size_text.dart';

import '../models/categories_provider.dart';
import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final int index;

  const CategoryItem(
      {Key? key,
      required this.index,
      })
      : super(key: key);

  void selectCategory(BuildContext context) {
    print('Index: $index');
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => CategoryMealsScreen(
              index: index,
                ),
            fullscreenDialog: true));
  }

  @override
  Widget build(BuildContext context) {

    

    //TextTheme textTheme = Theme.of(context).textTheme;
    final providerCategoriesData = Provider.of<Categories>(context);
    Size screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: (() => selectCategory(context)),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: screenSize.height * 0.05,
              width: (screenSize.width <= 570 || screenSize.width >= 850) ? 260 : 178,
              child: FittedBox(
                child: AutoSizeText(
                  providerCategoriesData.categoriesData[index].title,
                  minFontSize: 28,
                  maxFontSize: 30,
                  style: const TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w700, overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
            IconButton(onPressed: () => providerCategoriesData.deleteCategory(index), icon: const Icon(Icons.delete),),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            providerCategoriesData.categoriesData[index].color.withOpacity(0.5), // from color
            providerCategoriesData.categoriesData[index].color // to color
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
