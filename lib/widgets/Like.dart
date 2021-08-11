import 'package:flutter/material.dart';

class Like extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LikeState();
  }
}

class LikeState extends State<Like> {
  Color color = Colors.black45;
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        liked = !liked;
        setState(() {
          if (liked)
            color = Colors.red;
          else
            color = Colors.black45;
        });
      },
      child: Icon(
        Icons.favorite,
        color: color,
      ),
    );
  }
}
