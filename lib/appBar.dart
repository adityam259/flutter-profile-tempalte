import 'package:flutter/material.dart';

import 'MyStyle.dart';

class MyAppBar extends StatelessWidget {
  final List<String> menuOptions = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      height: 150,
      decoration: BoxDecoration(
        color: Color(0xfff4f5fa),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Profile",
                style: titleText,
              ),
              PopupMenuButton<String>(
                onSelected: (value) {
                  // TODO: Implement menu action
                },
                itemBuilder: (BuildContext context) {
                  return menuOptions.map((String option) {
                    return PopupMenuItem<String>(
                      value: option,
                      child: Text(option),
                    );
                  }).toList();
                },
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Icon(Icons.search, size: 25.0),
            ],
          ),
        ],
      ),
    );
  }
}
