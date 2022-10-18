import 'package:flutter/material.dart';

main() {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  final List<Color> myColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.amber
  ];

  final List<Widget> angka =
      // memulai index pada angka 1-100
      List.generate(
          100,
          (index) => Text("${index + 1}",
              style: TextStyle(fontSize: 20 + double.parse(index.toString()))));

  @override
  Widget build(BuildContext context) {
    // Visible
    // return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: Scaffold(
    //       appBar: AppBar(
    //         title: Text('Main Page'),
    //       ),
    //       body: Center(
    //         child: Text(
    //           'hello worldhasjhjshajajshajhsjasjahsjahsjajshjahsjahjjdkdsksldksjdfhfksjahfjsfhkfhfjhjhjfshjhfsfkjasfhjfhkajsfhjshfkjfhksfhjhrjjsdsahdkjsahg',
    //           // maxLines: 2,
    //           // overflow: TextOverflow.ellipsis
    //           textAlign: TextAlign.center,
    //           style: TextStyle(
    //               backgroundColor: Colors.amber,
    //               color: Colors.white,
    //               fontSize: 30,
    //               fontWeight: FontWeight.bold,
    //               decoration: TextDecoration.lineThrough),
    //         ),
    //       ),
    // ));

    // Invisible
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
    //       appBar: AppBar(title: Text('Column')),
    //       body: Stack(
    //           // mainAxisAlignment: MainAxisAlignment.center,
    //           // crossAxisAlignment: CrossAxisAlignment.end,
    //           children: [
    //             Container(height: 300, width: 300, color: Colors.green),
    //             Container(height: 200, width: 200, color: Colors.blue),
    //             Container(height: 100, width: 100, color: Colors.red),
    //             Container(height: 50, width: 50, color: Colors.amber)
    //           ])),
    // );

    // List View
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // ListView Builder
        // home: Scaffold(
        //     appBar: AppBar(title: Text('List View Builder')),
        //     body: ListView.builder(
        //         itemCount: myColors.length,
        //         itemBuilder: (context, index) {
        //           return Container(
        //               height: 250, width: 450, color: myColors[index]);
        //         }))

        // ListView Separated
        // home: Scaffold(
        //     appBar: AppBar(title: Text('List View Separated')),
        //     body: ListView.separated(
        //         separatorBuilder: (context, index) {
        //           // return Container(height: 30);
        //           return Divider(
        //             color: Colors.black,
        //           );
        //         },
        //         itemCount: myColors.length,
        //         itemBuilder: (context, index) {
        //           return Container(
        //               height: 250, width: 450, color: myColors[index]);
        //         }))

        // ListView Generate
        // home: Scaffold(
        //     appBar: AppBar(title: Text('List View Generate')),
        //     body: ListView(children: angka))

        // List Tile
        // home: Scaffold(
        //     appBar: AppBar(title: Text('List Tile')),
        //     body: ListView(
        //       children: [
        //         ListTile(
        //           contentPadding: EdgeInsets.all(10),
        //           title: Text('Gilang Maulana'),
        //           subtitle: Text('This is subtitle'),
        //           leading: CircleAvatar(),
        //           trailing: Text('10.00 PM'),
        //           // tileColor: Colors.green),
        //           // dense: true
        //         ),
        //         Divider(color: Colors.black),
        //         ListTile(
        //             title: Text('Gilang Maulana'),
        //             subtitle: Text('This is subtitle'),
        //             leading: CircleAvatar(),
        //             trailing: Text('10.00 PM')),
        //         Divider(color: Colors.black),
        //         ListTile(
        //             title: Text('Gilang Maulana'),
        //             subtitle: Text('This is subtitle'),
        //             leading: CircleAvatar(),
        //             trailing: Text('10.00 PM'))
        //       ],
        //     )
        //     )

        home: Scaffold(
            appBar: AppBar(title: Text('Images')),
            body: Center(child: Image.asset('images/unsika.png'))));
  }
}
