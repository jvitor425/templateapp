import 'package:flutter/material.dart';

import 'floatButton.dart';

class ItemExpandable extends StatelessWidget {
  final String title;
  final IconData icon;

  const ItemExpandable({Key key, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ActionButton(
            icon: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              fontFamily: 'MarkerFelt',
              color: Color(0xFF5123A5),
            ),
          )
        ],
      ),
    );
  }
}