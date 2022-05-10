import 'package:flutter/material.dart';

class ItemCards extends StatelessWidget {
  final String number;
  final IconData icon;
  final String title;
  final Color colorIcon;
  final Color colorTitle;

  const ItemCards(
      {Key key,
      this.number,
      this.icon,
      this.title,
      this.colorIcon,
      this.colorTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            number,
            style:
                TextStyle(fontFamily: 'ConcertOne', color: Color(0xFF504370)),
          ),
        ),
        Icon(
          icon,
          color: colorIcon,
          size: 40,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18, fontFamily: 'MarkerFelt', color: colorTitle),
        )
      ],
    );
  }
}