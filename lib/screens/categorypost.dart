// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_api_wordpress/screens/postdetail.dart';

class CategoryPost extends StatefulWidget {
  const CategoryPost({super.key});

  @override
  State<CategoryPost> createState() => _CategoryPost();
}

class _CategoryPost extends State<CategoryPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i) {
            return Card(
              child: ListTile(
                title: Row(
                  children: [
                    Expanded(
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV8QDUyi-yK5zwkvWt-HAb_EbqJJ7dzNxwfg&s")),
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(bottom: 10.0, left: 10.0),
                      child: const Text(
                        "Post Title",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ))
                  ],
                ),
                subtitle: Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PostDetail()));
                },
              ),
            );
          }),
    );
  }
}
