import 'package:flutter/material.dart';

class PostDetail extends StatelessWidget {
   PostDetail({super.key, required data});

  @override
  Widget build(BuildContext context) {
    var data;
    return Scaffold(
      appBar: AppBar(
        title:  Text("E-Learning Cave - Latest Post"),
      ),
      body: ListView(
        padding:  EdgeInsets.all(8),
        children: <Widget>[
          Center(
            child: Container(
              margin:  EdgeInsets.only(bottom: 10, top: 10),
              child: Text(
                data['title']['rendered'],
                style:
                     TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Image.network(
             data["_embedded"]["wp:featuremedia"][0]
                                  ["source_url"]),
          Container(
            padding:  EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              data['title']['rendered']
                  .toString()
                  .replaceAll("<p>", "")
                  .replaceAll("/p", ""),
              style:  TextStyle(fontSize: 20.0),
            ),
          )
        ],
      ),
    );
  }
}
