import 'package:dashboard/MyStyle.dart';
import 'package:dashboard/singlePost.dart';
import 'package:flutter/material.dart';

class MyPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.only(top: 370),
        child: Column(
          children: [SinglePost(), SinglePost(), SinglePost()],
        ));
  }
}
