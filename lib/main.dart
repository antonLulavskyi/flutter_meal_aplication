import 'package:flutter/material.dart';
import 'package:flutter_meal_aplication/models/categories_provider.dart';
import 'package:flutter_meal_aplication/models/meals_provider.dart';
import 'package:flutter_meal_aplication/screens/categories_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Categories(),),
        ChangeNotifierProvider(create: (context) => Meals(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Meals App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.dark,
            seedColor: Colors.black,
            primary: Colors.black,
            secondary: Colors.black,
            onSecondary: Colors.white,
            onPrimary: Colors.white,
          ),
          textTheme: const TextTheme(
            displayLarge: TextStyle(
                fontFamily: 'Lato',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w900,
                color: Colors.white),
            titleLarge: TextStyle(
                fontFamily: 'Lato',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                color: Colors.white),
            headlineLarge: TextStyle(
                fontFamily: 'Lato',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                ),
                headlineMedium: TextStyle(
                  fontFamily: 'Lato',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                ),
          ),
        ),
        
        initialRoute: CategoriesScreen.routeName,
        routes: {
          CategoriesScreen.routeName:(context) => const CategoriesScreen(),
          //CategoryMealsScreen.routeName:(context) => const CategoryMealsScreen(),
        },
      ),
    );
  }
}
