import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugaspraktikum6/models/user_active.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _tcUsername = TextEditingController();
  final _tcPassword = TextEditingController();

  bool _isObsecure = true;

  String username = '';
  String password = '';

  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _isKondisi = true;

  void _Kondisi() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isKondisi = !_isKondisi;
      if (_isKondisi != true) {
        print("Please Login!");
        print(_isKondisi);
      } else {
        username = _tcUsername.text;
        var user = userActive(username: username);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Screen2Page(user: user),
        ));
        print("Login Success");
        print(_isKondisi);
      }
    });
    // menyimpan nilai data
    prefs.setBool('iskondisi', _isKondisi);
  }

  void _getBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isKondisi = prefs.getBool('iskondisi') ?? _isKondisi;
      if (_isKondisi == true) {
        username = _tcUsername.text;
        var user = userActive(username: username);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Screen2Page(user: user),
        ));
        print(_isKondisi);
        print("Logged");
      } else {
        print(_isKondisi);
        print("Not Login");
      }
    });
  }

  void initState() {
    super.initState();
    _getBool();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Text('Form Login',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            TextFormField(
                controller: _tcUsername,
                decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Username',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          _tcUsername.clear();
                        },
                        icon: const Icon(Icons.clear)))),
            SizedBox(height: 16),
            TextFormField(
              controller: _tcPassword,
              obscureText: _isObsecure,
              decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Password',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObsecure ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObsecure = !_isObsecure;
                      });
                    },
                  )),
            ),
            SizedBox(height: 16),
            ElevatedButton(onPressed: _Kondisi, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}

// screen 2
class Screen2Page extends StatefulWidget {
  Screen2Page({super.key, required userActive user});

  @override
  State<Screen2Page> createState() => _Screen2PageState();
}

class _Screen2PageState extends State<Screen2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            width: 200,
            height: 200,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/squid.jpg"),
            ),
          ),
          SizedBox(
            height: 37,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (() {}),
                      child: Icon(
                        Icons.person_outline,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Gilang Maulana',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black38,
                  thickness: 1,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: (() {}),
                      child: Icon(
                        Icons.email_outlined,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black38,
                  thickness: 1,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: (() {}),
                      child: Icon(
                        Icons.remove_red_eye_outlined,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Password',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black38,
                  thickness: 1,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: (() {}),
                      child: Icon(
                        Icons.settings_outlined,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Settings',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black38,
                  thickness: 1,
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              width: 200,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: Text("LOGOUT")),
              )),
        ]),
      )),
    );
  }
}
