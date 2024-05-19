import 'package:flutter/material.dart';
import '../models/food.dart';

class MyFoodTile extends StatelessWidget {

  final Food food;
  final void Function()? onTap;
  const MyFoodTile({super.key ,
  required this.food,
  required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text('\$'+food.price.toString(),style: TextStyle(color:Theme.of(context).colorScheme.primary ),),
                      SizedBox(height: 10,)
                      Text(food.description),
                    ],
                  ) ),
                  Image.asset(food.imagePath, height: 120,),
                ],
              ),
            ),
        )
      ],
    )
}