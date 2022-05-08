import 'package:flutter/material.dart';

class FoodAndAmount extends StatelessWidget {
  final String name;
  final int? price;
  final int? amount;
  const FoodAndAmount({
    Key? key,
    required this.name,
    required this.amount,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          tileColor: Colors.white,
          title: Text('$name X$amount'),
          trailing: Text('\$$price'),
        ),
        const Divider(
          thickness: 1,
          height: 0,
          indent: 15,
          endIndent: 15,
        ),
      ],
    );
  }
}
