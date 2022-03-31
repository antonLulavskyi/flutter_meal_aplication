import 'package:flutter/material.dart';

class Category {

  static List<Category> kCategoriesData = [
  Category(id: 'a1', title: 'Polish', color: Colors.red),
  Category(id: 'a1', title: 'Italian', color: Colors.green),
  Category(id: 'a1', title: 'American', color: Colors.blue),
];

  final String id;
  final String title;
  final Color color;

   Category({required this.id, required this.title, required this.color});

  static void addNewCategory(String id, String title, Color color) {
    var newCategory = Category(id: id, title: title, color: color);
    kCategoriesData.add(newCategory);
  }
}

//  List<Category> kCategoriesData = [
//   Category(id: 'a1', title: 'Polish', color: Colors.red),
//   Category(id: 'a1', title: 'Italian', color: Colors.green),
//   Category(id: 'a1', title: 'American', color: Colors.blue),
// ];