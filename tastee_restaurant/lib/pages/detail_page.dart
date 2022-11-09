// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tastee_restaurant/model/tastee_model.dart';

class DetailPage extends StatefulWidget {
  final TasteeModel tasteeModel;
  const DetailPage({super.key, required this.tasteeModel});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0a1931),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(22, 49, 118, 230),
          iconSize: 24,
          items: [
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
              icon: Stack(
                children: [
                  new Icon(Icons.notifications_none_outlined,
                      size: 25.5, color: Colors.white),
                  Positioned(
                    top: -1.0,
                    right: -1.0,
                    child: Stack(
                      children: [
                        Text('$_counter', style: TextStyle(color: Colors.white))
                        // Icon(Icons.brightness_1, color: Colors.red, size: 12.0),
                      ],
                    ),
                  )
                ],
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
        appBar: AppBar(
            title: Text('detail page'),
            backgroundColor: Color(0xFFfc4a1a),
            elevation: 0),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFfc4a1a), Color(0xFFf7b733)]),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.white,
                          height: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 20, bottom: 20),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text('kakak'),
                                  Text('teks blablaba 1'),
                                  Text('teks blablaba 1'),
                                ]),
                          ),
                        ),
                        Image.asset('assets/milkshake.png',
                            width: 100, height: 500),
                      ])),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text('Rp.19000....',
                          style: TextStyle(color: Colors.white)),
                      Text('Nasi Padang....',
                          style: TextStyle(color: Colors.white)),
                    ]),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: Container(
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Column(children: [
                  Text(
                      'lorem ipsum dolor sit amet, consectetur adipiscing. lorem ipsum dolor sit amet, consectetur adipiscing. lorem ipsum dolor sit amet, consectetur adipiscing',
                      style: TextStyle(color: Colors.white)),
                ])),
              ),
              Row(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 1.5,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: IconButton(
                          icon: const Icon(Icons.add),
                          color: Colors.white,
                          onPressed: _incrementCounter,
                        ),
                      ),
                      SizedBox(width: 20),
                      InkWell(
                          child: Container(
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Color(0xff5D51A2),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                  child: Text('Order now',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold))))),
                    ],
                  ),
                )
              ])
            ],
          )),
        ));
  }
}
