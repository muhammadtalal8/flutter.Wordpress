import 'package:flutter/material.dart';
import 'package:flutter_api_wordpress/widgets/maintab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Learning Cave',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const Maintab(),
      debugShowCheckedModeBanner: false,
    );
  }
}
