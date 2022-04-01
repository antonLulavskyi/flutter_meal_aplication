import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/meals_provider.dart';

class MealItem extends StatelessWidget {
  final int index;
  const MealItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final providerData = Provider.of<Meals>(context).meals;
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: screenSize.width * 0.8,
      height: screenSize.height * 0.3,
      child: Card(
        child: Column(children: [
          Image.network(providerData[index].imageUrl,),
        ]),
      ),
    );
  }
}
