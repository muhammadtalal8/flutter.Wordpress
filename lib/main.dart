import 'package:flutter/material.dart';
import 'package:flutter_api_wordpress/widgets/maintab.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Learning Cave',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home:  Maintab(),
      debugShowCheckedModeBanner: false,
    );
  }
}
