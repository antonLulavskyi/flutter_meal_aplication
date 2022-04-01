

enum Complexity {
  simple,
  chalanging,
  hard,
}

enum Affordability {
  $,
  $$,
  $$$,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingridients;
  final List<String> cookingSteps;
  final int duration;
  final Complexity complexity;
  final Affordability affordabillity;
  final bool isGlutenFree;
  final bool isLActoseFree;
  final bool isVegan;
  final bool isVegeterian;
  bool isFavorite = false;

   Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingridients,
    required this.cookingSteps,
    required this.duration,
    required this.complexity,
    required this.affordabillity,
    required this.isGlutenFree,
    required this.isLActoseFree,
    required this.isVegan,
    required this.isVegeterian,
  });

  
}
