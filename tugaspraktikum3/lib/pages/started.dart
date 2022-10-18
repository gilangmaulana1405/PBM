import 'package:flutter/material.dart';
import 'package:flutter_medical/pages/home_page.dart';

class StartedPage extends StatefulWidget {
  const StartedPage({super.key});

  @override
  State<StartedPage> createState() => _StartedPageState();
}

class _StartedPageState extends State<StartedPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 16),
              Container(
                height: size.height / 1.8,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Image.asset('assets/start2.png'),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('All service in one app',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Padding(
                        padding: EdgeInsets.only(right: 100),
                        child: Text(
                            'Find your great love for your pet and make an appointment with one tap',
                            style: TextStyle(
                                fontSize: 15, color: Colors.black45))),
                    SizedBox(height: 32),
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (contex) {
                        return HomePage();
                      })),
                      child: Container(
                          height: 56,
                          decoration: BoxDecoration(
                            color: Color(0xff6C63FF),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                              child: Text('Get Started',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)))),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
