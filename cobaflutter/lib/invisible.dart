
import 'package:flutter/material.dart';

main(){
  runApp(InvisibleApp());
}

class InvisibleApp extends StatelessWidget {
  const InvisibleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('Column')),)
    );
  }
}