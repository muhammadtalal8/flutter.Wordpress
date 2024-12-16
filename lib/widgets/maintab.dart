// ignore_for_file: library_private_types_in_public_api, sort_child_properties_last, avoid_print, avoid_unnecessary_containers, duplicate_ignore, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_api_wordpress/screens/categorypost.dart';
import 'package:flutter_api_wordpress/screens/latestpost.dart';
import 'package:flutter_api_wordpress/screens/photos.dart';
import 'package:flutter_api_wordpress/screens/videos.dart';
import 'package:flutter_api_wordpress/widgets/mydrawer.dart';

class Maintab extends StatefulWidget {
   Maintab({Key? key}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<Maintab> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
     Tab(
      child: Text(
        "LATEST",
        style: TextStyle(fontSize: 10),
      ),
    ),
     Tab(
      child: Text(
        "POPULAR",
        style: TextStyle(fontSize: 10),
      ),
    ),
     Tab(
      child: Text(
        "VIDEOS",
        style: TextStyle(fontSize: 10),
      ),
    ),
     Tab(
      child: Text(
        "PHOTOS",
        style: TextStyle(fontSize: 10),
      ),
    ),
  ];

  @override
  void initState() {
    _tabController =
        TabController(length: topTabs.length, initialIndex: 0, vsync: this)
          ..addListener(() {
            setState(() {});
          });

    super.initState();
  }

  Future<bool> _onWillPop() async {
    print("on Will Pop");
    if (_tabController?.index == 0) {
      await SystemNavigator.pop();
    }

    Future.delayed( Duration(microseconds: 200), () {
      print("Set Index");
      _tabController?.index = 0;
    });

    print("Return");
    return _tabController?.index == 0;
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  // ignore: duplicate_ignore
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
        child: WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title:  Text(
            "E-Learning Cave",
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            Container(
              child: IconButton(
                icon:  Icon(Icons.search),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  print("Search Button Clicked");
                },
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.pink[300]),
            ),
            Container(
              margin:  EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                icon:  Icon(Icons.menu),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.pink[300]),
            )
          ],
          bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.black,
              tabs: topTabs)),


        body: TabBarView(
            controller: _tabController,
            children:   [LatestPost(data: null,), CategoryPost(data: null,), Video(), Photo()]),
      ),
    ));
  }
}
