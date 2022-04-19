import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/app_colors.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_description_and_text.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_menu_option_card.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_size.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/dessert_card.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/food_order_and_description.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/inbox_card.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/notification_card.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/order_dropdown.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/rating.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/recent_item_card.dart';
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

class AppHomePage extends StatefulWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  State<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppColors.greyColor,
        items: const [
          Icon(Icons.menu),
          Icon(Icons.local_offer),
          Icon(Icons.home),
          Icon(Icons.person),
          Icon(Icons.more),
        ],
        index: index,
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
      ),
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
                TextAndSwitchButton(
                  value: false,
                  text: 'text',
                  onChanged: (_) {},
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      AppSize.verticalSpaceMedium,
                     const AppDescriptionAndText(
                        title: 'Welcome to Meal Monkey',
                        description:
                            'Meal Monkey is a food ordering app that helps you to order food from your favorite restaurants. You can order food from your favorite restaurants and get it delivered to your doorstep.',
                      ),
                      AppSize.verticalSpaceMedium,
                      AppMenuOption(
                        title: 'Food Name',
                        description: 'Food Description',
                        image: ClipOval(
                          child: Image.asset(
                            'assets/images/food.png',
                            fit: BoxFit.cover,
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                      AppSize.verticalSpaceMedium,
                     const NotificationCard(
                        notificationTitle: 'No oder has been picked up',
                        notificationTime: '12:00',
                      ),
                      AppSize.verticalSpaceMedium,
                     const InboxCard(
                        title: 'Lorem ipsum',
                        description: 'Lorem ipsum sit ameraco',
                        date: '6th July',
                      ),
                      AppSize.verticalSpaceMedium,
                    const  RecentItemCard(
                        foodName: 'Food Name',
                        foodDescription: 'Italy food',
                        foodRating: '4.9',
                        noOfRatings: '124',
                        foodImage: 'assets/images/food.png',
                      ),
                      AppSize.verticalSpaceMedium,
                      Text('Index: $index'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
