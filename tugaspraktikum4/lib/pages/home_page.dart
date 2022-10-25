import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:tugaspraktikum4/model/recipe_model.dart';
import 'package:tugaspraktikum4/pages/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Home Page'), backgroundColor: Color(0xff38EA2A)),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 16),
                Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xff38EA2A),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/chef_woman.png',
                              width: 90, height: 100),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 200,
                                child: Text('How to make delicous food?',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                            ],
                          )
                        ])),
                SizedBox(height: 16),
                SizedBox(
                  height: 1000,
                  child: ListView.builder(
                      itemCount: recipeList.length,
                      itemBuilder: (context, index) {
                        final item = recipeList[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: ListTile(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              title: Text(item.title),
                              subtitle: Text(item.description),
                              trailing: Text("${item.rating}"),
                              leading: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(item.gambar))),
                              ),
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(recipe: item),
                                  ))),
                        );
                      }),
                ),
                SizedBox(height: 16)
              ],
            ),
          ),
        ));
  }
}
