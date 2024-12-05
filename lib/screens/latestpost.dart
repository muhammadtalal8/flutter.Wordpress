// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class LatestPost extends StatefulWidget {
  const LatestPost({super.key});

  @override
  State<LatestPost> createState() => _LatestPostState();
}

class _LatestPostState extends State<LatestPost> {
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
                            "https://www.bing.com/ck/a?!&&p=a6c8b6418833ba6ad3a1999287e555b13b12da3446ce0d825084e8a002d0ecebJmltdHM9MTczMzM1NjgwMA&ptn=3&ver=2&hsh=4&fclid=2456be0c-9341-6a37-1d02-ad7e929a6b9f&u=a1L2ltYWdlcy9zZWFyY2g_cT1waWN0dXJlJTIwb2YlMjBuYXR1cmUmRk9STT1JUUZSQkEmaWQ9RUUzQjRDODQ3MjgwMDdBNTNEMjlDQUQ1NzI1NENBODE3MjM2Q0YwMQ&ntb=1")),
                    Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 10.0,left: 10.0),
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
              ),
            );
          }),
    );
  }
}
