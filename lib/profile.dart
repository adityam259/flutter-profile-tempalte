import 'package:dashboard/MyStyle.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 170),
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0))),
      child: Column(
        children: [
          CircleAvatar(),
          SizedBox(
            height: 10,
          ),
          Text("Aditya Malviya", style: titleNameHeading),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, size: 16, color: Colors.grey),
              Text(
                "Nagpur",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Column(children: [
                    Text("121", style: countText),
                    Text("Posts", style: followText)
                  ])
                ],
              ),
              SizedBox(
                width: 24.0,
              ),
              Column(
                children: [
                  Column(children: [
                    Text("20M", style: countText),
                    Text("Followers", style: followText)
                  ])
                ],
              ),
              SizedBox(
                width: 24.0,
              ),
              Column(
                children: [
                  Column(children: [
                    Text("10M", style: countText),
                    Text("Following", style: followText)
                  ])
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
