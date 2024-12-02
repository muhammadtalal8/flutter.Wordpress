// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Maintab extends StatefulWidget {
  const Maintab({Key? key}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<Maintab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text(
        "E-Learning Cave",
        style: TextStyle(fontSize: 30),
      ),
    ));
  }
}
