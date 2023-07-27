import 'package:flutter/material.dart';

class RowInformation extends StatelessWidget {
  const RowInformation({super.key, required this.title,required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              'See all',
              style: TextStyle(fontSize: 15, color: Colors.grey[600]),
            )),
      ],
    );
  }
}
