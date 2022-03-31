import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  const Category({required this.id, required this.title, required this.color});
}

List<Category> CATEGORIES_DATA = const [
  Category(id: 'a1', title: 'Polish', color: Colors.red),
  Category(id: 'a1', title: 'Italian', color: Colors.green),
  Category(id: 'a1', title: 'American', color: Colors.blue),
];