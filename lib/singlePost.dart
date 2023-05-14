import 'package:flutter/material.dart';
import 'package:dashboard/MyStyle.dart';

class SinglePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  topLeft: Radius.circular(50.0))),
          margin: EdgeInsets.only(left: 30.0),
          height: 150,
          width: double.infinity,
          child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  topLeft: Radius.circular(50.0)),
              child: Image.asset(
                "assets/img.jpg",
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
            margin: EdgeInsets.only(left: 80.0, right: 5.0, bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("post Title 1 ", style: postText),
                Row(
                  children: [
                    Icon(
                      Icons.comment_rounded,
                      color: Colors.white,
                      size: 16.0,
                    ),
                    Text(
                      "15",
                      style: postText,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 16.0,
                    ),
                    Text(
                      "150k",
                      style: postText,
                    ),
                    SizedBox(
                      width: 5,
                    )
                  ],
                )
              ],
            ))
      ],
    );
  }
}
