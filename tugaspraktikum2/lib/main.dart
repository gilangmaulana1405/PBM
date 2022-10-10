import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Flutter',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const MyHomePage(title: "GiulApps"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Tugas Ganti Nama
// class _MyHomePageState extends State<MyHomePage> {
//   bool kondisi = true;

//   void gantiNama() {
//     setState(() {
//       if (kondisi) {
//         kondisi = false;
//       } else {
//         kondisi = true;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title, style: TextStyle(color: Colors.white)),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             kondisi == true
//                 ? Text('GILANG', style: TextStyle(fontSize: 30))
//                 : Text('GIUL', style: TextStyle(fontSize: 30)),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: gantiNama,
//         icon: const Icon(Icons.edit, color: Colors.white),
//         label: const Text('Ganti',
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
//         backgroundColor: Colors.orange,
//       ),
//     );
//   }
// }

// Tugas Perbesar Angka
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 16;
  var textSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('$_counter', style: TextStyle(fontSize: 10 + textSize))
            ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            textSize = textSize + 2.0;
            _counter++;
          });
        },
        icon: const Icon(Icons.add_circle_outline, color: Colors.white),
        label: const Text('Perbesar',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
