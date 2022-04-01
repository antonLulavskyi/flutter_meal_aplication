
import 'package:flutter/material.dart';

import 'meal_model.dart';

class Meals with ChangeNotifier {
  final  List<Meal> _meals = [
    Meal(id: 'a1',
    categories: ['Polish'],
    title: 'Pierogi',
    imageUrl: 'https://media.istockphoto.com/photos/top-view-russian-ravioli-pasta-picture-id916523010?k=20&m=916523010&s=612x612&w=0&h=m0ODZT-JG2JfmWnD9-yxxMkb2FtNx7Dwv9cnSLhtRTw=',
    ingridients: ['5 cups all-purpose flour','1 teaspoon salt','1 cup water','3 large eggs','1/2 cup butter, softened','2 tablespoons butter','5 ounces cream cheese, softened','1/2 teaspoon salt','1/2 teaspoon pepper',],
    cookingSteps: [
      'In a food processor, combine flour and salt; cover and pulse to blend. Add water, eggs and butter; cover and pulse until dough forms a ball, adding an additional 1 to 2 tablespoons of water or flour if needed. Let rest, covered, 15 to 30 minutes.',
      'Place potatoes in a large saucepan and cover with water. Bring to a boil over high heat. Reduce heat; cover and simmer until tender, 10-15 minutes. Meanwhile, in a large skillet over medium-high heat, saute onions in butter until tender.',
      'Drain potatoes. Over very low heat, stir potatoes until steam has evaporated, 1-2 minutes. Press through a potato ricer or strainer into a large bowl. Stir in cream cheese, salt, pepper and onion mixture.',
      'Divide dough into 4 parts. On a lightly floured surface, roll 1 portion of dough to 1/8-in. thickness; cut with a floured 3-in. biscuit cutter. Place 2 teaspoons of filling in center of each circle. Moisten edges with water; fold in half and press edges to seal. Repeat with remaining dough and filling.',
      'Bring a Dutch oven of water to a boil over high heat; add pierogi in batches. Reduce heat to a gentle simmer; cook until pierogi float to the top and are tender, 1-2 minutes. Remove with a slotted spoon. In a large skillet, saute 4 pierogi and onion in butter until pierogi are lightly browned and heated through; sprinkle with parsley. Repeat with remaining pierogi.',
    ],
    duration: 120,
    complexity: Complexity.chalanging,
    affordabillity: Affordability.$,
    isGlutenFree: false,
    isLActoseFree: false,
    isVegan: false,
    isVegeterian: false,
    ),
    Meal(
      id: 'a2',
      categories: ['Italian'],
      title: 'Pizza Margarita',
      imageUrl: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGl6emF8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60',
      ingridients: ['12-inch round of pizza dough, stretched','tablespoons tomato sauce','Extra-virgin olive oil','2 ¾ ounces fresh mozzarella','4 to 5 basil leaves, roughly torn',],
      cookingSteps: [
        'Place a pizza stone or tiles on the middle rack of your oven and turn heat to its highest setting. Let it heat for at least an hour.',
        'Put the sauce in the center of the stretched dough and use the back of a spoon to spread it evenly across the surface, stopping approximately 1/2 inch from the edges.',
        'Drizzle a little olive oil over the pie. Break the cheese into large pieces and place these gently on the sauce. Scatter basil leaves over the top.',
        'Using a pizza peel, pick up the pie and slide it onto the heated stone or tiles in the oven. Bake until the crust is golden brown and the cheese is bubbling, approximately 4 to 8 minutes.',
      ],
      duration: 80,
      complexity: Complexity.simple,
      affordabillity: Affordability.$,
      isGlutenFree: false,
      isLActoseFree: false,
      isVegan: false,
      isVegeterian: true,
      ),
      Meal(
        id: 'a3',
        categories: ['American'],
        title: 'Beef Burger',
        imageUrl: 'https://media.istockphoto.com/photos/junk-food-homemade-beef-burgers-on-vintage-wooden-background-picture-id1302436326?b=1&k=20&m=1302436326&s=170667a&w=0&h=MvSjb8R4lOJT_NteIiZxfIoZvXIkKucRUVeViFBLVN4=',
        ingridients: ['1 small onion, diced','500g good-quality beef mince','1 egg','1 tbsp vegetable oil','4 burger buns','All or any of the following to serve: sliced tomato, beetroot, horseradish sauce, mayonnaise, ketchup, handful iceberg lettuce, rocket, watercress',],
        cookingSteps: [
          'Tip 500g beef mince into a bowl with 1 small diced onion and 1 egg, then mix.',
          'Divide the mixture into four. Lightly wet your hands. Carefully roll the mixture into balls, each about the size of a tennis ball.',
          'Set in the palm of your hand and gently squeeze down to flatten into patties about 3cm thick. Make sure all the burgers are the same thickness so that they will cook evenly.',
          'Put on a plate, cover with cling film and leave in the fridge to firm up for at least 30 mins.',
          'Heat the barbecue to medium hot (there will be white ash over the red hot coals – about 40 mins after lighting). Lightly brush one side of each burger with vegetable oil.',
          'Place the burgers, oil-side down, on the barbecue. Cook for 5 mins until the meat is lightly charred. Don’t move them around or they may stick.',
          'Oil the other side, then turn over using tongs. Don’t press down on the meat, as that will squeeze out the juices.'
          'Cook for 5 mins more for medium. If you like your burgers pink in the middle, cook 1 min less each side. For well done, cook 1 min more.',
          'Take the burgers off the barbecue. Leave to rest on a plate so that all the juices can settle inside.',
          'Slice four burger buns in half. Place, cut-side down, on the barbecue rack and toast for 1 min until they are lightly charred. Place a burger inside each bun, then top with your choice of accompaniment.',
          
        ],
        duration: 90,
        complexity: Complexity.hard,
        affordabillity: Affordability.$$$,
        isGlutenFree: false,
        isLActoseFree: true,
        isVegan: false,
        isVegeterian: false,
        ),
  ];

  List<Meal> get meals => _meals;

  // void toggleIsFavotite() {
  //   isFavorite != isFavorite;
  //   notifyListeners();
  // }
}