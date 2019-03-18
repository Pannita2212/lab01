import 'dart:core';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'model.dart';
import 'listviewPost.dart';

class ListData extends StatelessWidget {
  Future loadPost() async {
    Response resp = await get("https://jsonplaceholder.typicode.com/posts");
    List<dynamic> data = json.decode(resp.body);
    List<Post> posts = List();
    data.forEach((d) {
      posts.add(Post.fromJson(d));
    });
    print(posts.length);
    print(posts.elementAt(0).body);
    return posts;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: FutureBuilder(
        future: loadPost(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) print("errpr");
          return snapshot.hasData
              ? ListViewPost(
                  posts: snapshot.data,
                )
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}
