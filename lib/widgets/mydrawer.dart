// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer(MyDrawer myDrawer, {Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.pinkAccent[200],
        child: Column(
          children: [
            Expanded(
                child: Container(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: const Center(child: Text("Service",style: TextStyle(fontSize: 22,color: Colors.white),)),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Text("Service")))
                    },
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
