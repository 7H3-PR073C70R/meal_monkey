import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/dessert_card.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/food_order_and_description.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/order_dropdown.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/rating.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/text_and_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal Monkey',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppHomePage(),
    );
  }
}

class AppHomePage extends StatelessWidget {
  const AppHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Monkey'),
      ),
      body: Column(
        children: [
          DessertCard(
            imageUrl:
                'https://antalyatouristinformation.com/wp-content/uploads/2021/04/Turkish-Desserts.jpg',
            rating: 4.5,
            resturantName: 'resturant name',
            title: 'title',
            onTap: () {},
          ),
          AppSize.verticalSpaceSmall,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const FoodOrderAndDescription(
                  imageURl:
                      'https://www.crushpixel.com/big-static11/preview4/fresh-chicken-burger-694353.jpg',
                  foodName: 'Chicken Burger',
                  resturantName: 'Burger King',
                  address: 'unkown location',
                  raters: 234,
                  ratings: 4.5,
                  type: 'Burger',
                ),
                AppSize.verticalSpaceSmall,
                OrderDropDown(
                  options: const [
                    'options',
                    'sample',
                    'sample',
                  ],
                  onChanged: (_) {},
                  value: 'options',
                ),
                AppSize.verticalSpaceSmall,
                const Ratings(ratings: 5),
                AppSize.verticalSpaceSmall,
                const Ratings(ratings: 4),
                AppSize.verticalSpaceSmall,
                const Ratings(ratings: 2),
                AppSize.verticalSpaceSmall,
                const Ratings(ratings: 1),
                AppSize.verticalSpaceSmall,
                TextAndSwitchButton(value: false, text: 'text', onChanged: (_) {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
