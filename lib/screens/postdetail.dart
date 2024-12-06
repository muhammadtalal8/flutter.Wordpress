import 'package:flutter/material.dart';

class PostDetail extends StatelessWidget {
  const PostDetail({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: const Text(
                "Post title",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Image.network(
              "https://www.bing.com/ck/a?!&&p=a6c8b6418833ba6ad3a1999287e555b13b12da3446ce0d825084e8a002d0ecebJmltdHM9MTczMzM1NjgwMA&ptn=3&ver=2&hsh=4&fclid=2456be0c-9341-6a37-1d02-ad7e929a6b9f&u=a1L2ltYWdlcy9zZWFyY2g_cT1waWN0dXJlJTIwb2YlMjBuYXR1cmUmRk9STT1JUUZSQkEmaWQ9RUUzQjRDODQ3MjgwMDdBNTNEMjlDQUQ1NzI1NENBODE3MjM2Q0YwMQ&ntb=1"),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ",
              style: TextStyle(fontSize: 20.0),
            ),
          )
        ],
      ),
    );
  }
}
