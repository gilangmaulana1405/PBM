import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:latihanpraktikum4/restaurant_model.dart';

class DetailPage extends StatelessWidget {
  final Restaurant restaurant;

  const DetailPage({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Text(restaurant.title),
      SizedBox(height: 16),
      Text(restaurant.deskripsi),
      ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('back'))
    ])));
  }
}
