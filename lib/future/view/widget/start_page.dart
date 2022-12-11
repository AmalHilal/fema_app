import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  Image image;
  String des;
  StartPage({required this.image , required this.des});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          image,
          SizedBox(
            height: 40,
          ),
          Text(des,style: TextStyle(fontSize: 40),)
        ],
      ),
    );
  }
}
