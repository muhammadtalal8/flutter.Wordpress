import 'package:flutter/material.dart';
import 'package:flutter_api_wordpress/services/page.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer(MyDrawer context, {Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  MyPage pageService = MyPage();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.pinkAccent[200],
        child: Column(
          children: [
            Expanded(
                child: Container(


              child: 
              
              
        future: postService.getAllPost(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data?.length == 0) {
              return const Center(
                child: Text("0 Post"),

              );
            }
            return 
            } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),

            )
          ],
        ),
      ),
    );
  }
}
