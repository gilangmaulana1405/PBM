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
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text("Rating : ${recipe.rating}")],
                ),
                SizedBox(width: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(recipe.title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                ),
              ],
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
