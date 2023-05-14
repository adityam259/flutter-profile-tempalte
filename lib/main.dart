import 'package:dashboard/MyStyle.dart';
import 'package:dashboard/appBar.dart';
import 'package:dashboard/posts.dart';
import 'package:dashboard/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
          backgroundColor: mainColor,
          body: ListView(
            children: [
              Stack(
                children: [
                  MyPosts(),
                  Profile(), //profile
                  MyAppBar(), //App Bar
                ],
              )
            ],
          ),
        )));
  }
}
