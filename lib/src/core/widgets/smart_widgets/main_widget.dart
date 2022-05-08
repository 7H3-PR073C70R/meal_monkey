import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/bottom_nav_bar.dart';
import 'package:meal_monkey/src/features/home/presentation/pages/home_page.dart';

class MainPage extends StatefulWidget {
  static const String path = '/main';
  final int index;
  const MainPage({Key? key, required this.index}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        index: widget.index,
      ),
      body: pages.elementAt(widget.index),
    );
  }
}

final List<Widget> pages = [
  Scaffold(
    appBar: AppBar(
      title: const Text('Meal Monkey'),
    ),
    body: const Center(
      child: Text('Page 1'),
    ),
  ),
  Scaffold(
    appBar: AppBar(
      title: const Text('Meal Monkey'),
    ),
    body: const Center(
      child: Text('Page 2'),
    ),
  ),
  const HomePage(),
  Scaffold(
    appBar: AppBar(
      title: const Text('Meal Monkey'),
    ),
    body: const Center(
      child: Text('Page 4'),
    ),
  ),
  Scaffold(
    appBar: AppBar(
      title: const Text('Meal Monkey'),
    ),
    body: const Center(
      child: Text('Page 5'),
    ),
  ),
];
