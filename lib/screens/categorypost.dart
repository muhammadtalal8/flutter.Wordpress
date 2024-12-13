// ignore_for_file: prefer_is_empty, prefer_typing_uninitialized_variables, unused_import, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_api_wordpress/screens/postdetail.dart';
import 'package:flutter_api_wordpress/services/mycategory.dart';
// ignore: unused_import
import 'package:flutter_api_wordpress/services/post.dart';

class CategoryPost extends StatefulWidget {
  final data;

   const CategoryPost({super.key,required this.data});

  @override
  State<CategoryPost> createState() => _CategoryPostState();
}

class _CategoryPostState extends State<CategoryPost> {
  MyCategory categoryPostService = MyCategory();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  const EdgeInsets.only(top: 8.0),
      child: FutureBuilder<List>(
        future: categoryPostService.getCategoryPost(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data?.length == 0) {
              return  const Center(
                child: Text("0 Post"),
              );
            }
            return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, i) {
                  return Card(
                    child: ListTile(
                      title: Row(
                        children: [
                          Expanded(
                              child: Image.network(snapshot.data?[i]
                                      ["_embedded"]["wp:featuremedia"][0]
                                  ["source_url"])),
                          Expanded(
                              child: Container(
                            margin:
                                 const EdgeInsets.only(bottom: 10.0, left: 10.0),
                            child: Text(
                              snapshot.data?[i]["rendered"],
                              style:  const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ))
                        ],
                      ),
                      subtitle: Container(
                        margin:  const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          snapshot.data![i]["content"]["rendered"]
                              .toString()
                              .replaceAll("<p>", "")
                              .replaceAll("/p", ""),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style:  const TextStyle(fontSize: 20.0),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PostDetail(data: snapshot.data?[i])));
                      },
                    ),
                  );
                });
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return  const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
