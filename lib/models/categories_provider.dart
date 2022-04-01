import 'package:flutter/material.dart';
import 'category_model.dart';
import 'dart:math';

class Categories with ChangeNotifier {

  final List<Category> _kCategoriesData = [
  Category(id: 'a1', title: 'Polish', color: Colors.red),
  Category(id: 'a1', title: 'Italian', color: Colors.green),
  Category(id: 'a1', title: 'American', color: Colors.blue),
];

 List<Category> get categoriesData =>  _kCategoriesData;

 void addNewCategory(String title) {
   Random random = Random();
   String randomId = random.nextInt(1000).toString();
   Color randomColor = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

   var newCategory = Category(id: randomId, title: title, color: randomColor);
   _kCategoriesData.add(newCategory);
   notifyListeners();
 }

 void deleteCategory(int withIndex) {
   _kCategoriesData.removeAt(withIndex);
   notifyListeners();
 }

}