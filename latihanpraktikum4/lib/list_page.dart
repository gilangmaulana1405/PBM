import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:latihanpraktikum4/restaurant_model.dart';
import 'package:latihanpraktikum4/detail_page.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView.builder(
          itemCount: restaurantList.length,
          itemBuilder: (context, index) {
            final item = restaurantList[index];
            return ListTile(
                title: Text(item.title),
                subtitle: Text(item.deskripsi),
                trailing: Text("${item.rating}"),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(restaurant: item),))
                );
          }),
    ));
  }
}
