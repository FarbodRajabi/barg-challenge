import 'package:flutter/material.dart';

class UserInfoText extends StatelessWidget {
  final String title, text;

  const UserInfoText({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      children: [
        TextSpan(
          text: '$title : ',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[700],
          ),
        ),
        TextSpan(
          text: text,
          style: TextStyle(
            fontSize: 14,
            color: Colors.green.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ));
  }
}
