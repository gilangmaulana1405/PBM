// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:tastee_restaurant/model/tastee_model.dart';
import 'package:tastee_restaurant/pages/detail_page.dart';

// import 'package:http/http.dart' as http;
// import 'dart:async';
// import 'dart:convert';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a1931),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(22, 49, 118, 230),
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.apps_rounded,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(children: [
                SizedBox(height: 12),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text('Welcome,',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                            SizedBox(
                              height: 4,
                            ),
                            Text('Gilang Maulana',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ]),
                      CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 30,
                          child: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage('assets/squid.jpg')))
                    ]),
                SizedBox(height: 16),
                Container(
                    padding: EdgeInsets.only(left: 12),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(children: [
                      Icon(Icons.search, size: 28, color: Colors.black54),
                      SizedBox(width: 12),
                      Text('Search for food',
                          style: TextStyle(color: Colors.black54))
                    ])),
                SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 200,
                          width: 200,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 7.0, vertical: 7.0),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xFFfc4a1a),
                                    Color(0xFFf7b733)
                                  ]),
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/mie_ramen.png',
                                  width: 100, height: 100),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 200,
                          width: 200,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 7.0, vertical: 7.0),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xFFfc4a1a),
                                    Color(0xFFf7b733)
                                  ]),
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/milkshake.png',
                                  width: 100, height: 100),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 200,
                          width: 200,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 7.0, vertical: 7.0),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xFFfc4a1a),
                                    Color(0xFFf7b733)
                                  ]),
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/cupcake.png',
                                  width: 150, height: 200),
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('List Item',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text('See All',
                          style: TextStyle(color: Colors.white, fontSize: 16))
                    ]),
                SizedBox(height: 16),
                FutureBuilder<String>(
                    future: DefaultAssetBundle.of(context)
                        .loadString('assets/data_tastee.json'),
                    builder: (context, snapshot) {
                      List<TasteeModel> tastee = parse(snapshot.data);

                      return SizedBox(
                        height: 1000,
                        child: ListView.builder(
                            itemCount: tastee.length,
                            itemBuilder: (context, index) {
                              return SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ListTile(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1.5,
                                                color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          title: Text(tastee[index].title,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                          subtitle: Text(tastee[index].description,
                                              style: TextStyle(
                                                  color: Colors.white70)),
                                          trailing: Text(
                                              "Rp. ${tastee[index].price}",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          leading: Container(
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          tastee[index]
                                                              .image)))),
                                          onTap: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => DetailPage(
                                                      tasteeModel: tastee[index])))),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      );
                    }),
                SizedBox(height: 16)
              ])),
        ),
      ),
    );
  }
}
