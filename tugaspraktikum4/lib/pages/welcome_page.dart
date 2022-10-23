import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:tugaspraktikum4/pages/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      SizedBox(height: 16),
      Container(
        height: size.height / 1.8,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Image.asset('assets/welcome.png'),
      ),
      SizedBox(height: 4),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text('Welcome to Recipely ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Text('*',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black26)),
            Text('*',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54)),
            Text('*',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            SizedBox(height: 10),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color(0xff38EA2A),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                        child: Text('Discover',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))))),
          ]))
    ])));
  }
}
