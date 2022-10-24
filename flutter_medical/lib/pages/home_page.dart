import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 24,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black54,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_outlined,
                color: Colors.black54,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Colors.black54,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none_outlined,
                color: Colors.black54,
              ),
              label: '',
            ),
          ],
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(height: 12),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Selamat Datang,',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black54)),
                              SizedBox(
                                height: 4,
                              ),
                              Text('Gilang Maulana',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))
                            ]),
                        CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 30,
                            child: CircleAvatar(
                                radius: 28,
                                backgroundImage:
                                    AssetImage('assets/squid.jpg')))
                      ]),
                  SizedBox(height: 30),
                  Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xff6C63FF),
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/doctorpet.png',
                              width: 90, height: 100),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('How do you feel?',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                SizedBox(height: 4),
                                SizedBox(
                                    width: 120,
                                    child:
                                        Text('Fill out your medical right now',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ))),
                                SizedBox(height: 10),
                                Container(
                                    width: 150,
                                    height: 35,
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Color(0xff6C63FF),
                                    )),
                              ])
                        ],
                      )),
                  SizedBox(height: 20),
                  Container(
                      padding: EdgeInsets.only(left: 12),
                      height: 64,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(95, 179, 173, 173),
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(children: [
                        Icon(Icons.search, size: 28, color: Colors.black54),
                        SizedBox(width: 12),
                        Text(' How can we help you?',
                            style: TextStyle(color: Colors.black54))
                      ])),
                  SizedBox(height: 16),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('List Item',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        Text('See All',
                            style:
                                TextStyle(color: Colors.black45, fontSize: 16))
                      ]),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                  SizedBox(
                      height: 140,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                              width: 160,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(95, 179, 173, 173),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7.0, vertical: 7.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage('assets/3.png'),
                                  ),
                                  SizedBox(height: 5),
                                  Text('Dr. Reisa',
                                      overflow: TextOverflow.fade,
                                      maxLines: 2,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(height: 3),
                                  Text('Surgeon',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.black54)),
                                ],
                              )),
                          Container(
                              width: 160,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(95, 179, 173, 173),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7.0, vertical: 7.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage('assets/3.png'),
                                  ),
                                  SizedBox(height: 5),
                                  Text('Dr. Reisa',
                                      overflow: TextOverflow.fade,
                                      maxLines: 2,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(height: 3),
                                  Text('Surgeon',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.black54)),
                                ],
                              )),
                          Container(
                              width: 160,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(95, 179, 173, 173),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 7),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage('assets/3.png'),
                                  ),
                                  SizedBox(height: 5),
                                  Text('Dr. Reisa',
                                      overflow: TextOverflow.fade,
                                      maxLines: 2,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(height: 3),
                                  Text('Surgeon',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.black54)),
                                ],
                              ))
                        ],
                      ))
                ],
              )),
        ]));
  }
}
