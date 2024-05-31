import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  const AddCard(
      {super.key, required this.icon, required this.text, required this.color});
  final IconData icon;

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Icon(
          icon,
          size: 30,
          color: color,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 20, color: color, fontWeight: FontWeight.w400),
        )
      ],
    ));
  }
}
