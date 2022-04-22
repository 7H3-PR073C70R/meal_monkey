import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/bottom_nav_bar.dart';


class HomePage extends StatefulWidget {
  static const String path = '/home';
  final int index;
  const HomePage({Key? key, required this.index}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
  Scaffold(
    appBar: AppBar(
      title: const Text('Meal Monkey'),
    ),
    body: const Center(
      child: Text('Page 3'),
    ),
  ),
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
