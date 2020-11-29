import 'package:flutter/material.dart';

class GroupSt extends StatefulWidget {
  @override
  _GroupStState createState() => _GroupStState();
}

class _GroupStState extends State<GroupSt> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 28,
            child: Text(
              '0',
              style: TextStyle(
                  color: Color(0xFF651FFF),
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            ),
            backgroundColor: Color(0xFFD1BCFF),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Имя фамилия',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.expand_more,
                          color: Color(0xFF651FFF),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: '''Lorem Ipsum is simply dummy 
text of the printing and typesetting industry.''',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        text: null,
                        style: TextStyle(color: Color(0xFF651FFF)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
