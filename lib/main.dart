import 'package:flutter/material.dart';
import 'package:flutter_meal_aplication/models/categories_provider.dart';
import 'package:flutter_meal_aplication/screens/categories_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Categories(),
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
                color: Colors.white),
          ),
        ),
        home: CategoriesScreen(),
      ),
    );
  }
}
