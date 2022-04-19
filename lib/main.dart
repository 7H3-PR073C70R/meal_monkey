import 'package:flutter/material.dart';

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
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
