// ignore_for_file: library_private_types_in_public_api, sort_child_properties_last, avoid_print

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
      actions: [
        Container(
          child: IconButton(
            onPressed: () {
              print("Search Button Clicked");
            },
            icon: const Icon(Icons.search),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.pink[300]),
        ),
         Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: IconButton(
            onPressed: () {
              print("Menu Button Clicked");
            },
            icon: const Icon(Icons.menu),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.pink[300]),
        )
      ],
    ));
  }
}
