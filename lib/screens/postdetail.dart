// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class PostDetail extends StatelessWidget {
  const PostDetail({super.key, required data});

  @override
  Widget build(BuildContext context) {
    var data;
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Learning Cave - Latest Post"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 10, top: 10),
              child: Text(
                data['title']['rendered'],
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Image.network(
             data["_embedded"]["wp:featuremedia"][0]
                                  ["source_url"]),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              data['title']['rendered']
                  .toString()
                  .replaceAll("<p>", "")
                  .replaceAll("/p", ""),
              style: const TextStyle(fontSize: 20.0),
            ),
          )
        ],
      ),
    );
  }
}
