import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:tugaspraktikum4/model/recipe_model.dart';

class DetailPage extends StatelessWidget {
  final Recipe recipe;
  const DetailPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(scrollDirection: Axis.vertical, children: [
      Column(children: [
        SizedBox(height: 24),
        Container(
          height: 230,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(recipe.gambar))),
        ),
        SizedBox(height: 16),
        Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Text("Rating : ${recipe.rating}"),
                      padding: EdgeInsets.all(10)),
                  Container(
                      child: Text(recipe.title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      padding: EdgeInsets.all(10)),
                ],
              ),
            )),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
            child: Column(
              children: [
                Text(recipe.description, style: TextStyle(fontSize: 15))
              ],
            )),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('back'),
            style: ElevatedButton.styleFrom(primary: Color(0xff38EA2A)))
      ]),
    ]));
  }
}
