import 'package:flutter/material.dart';
import 'package:marvel_comics_app/presentation/utils/extensions.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          child: Text('UP'),
        ),
        15.w,
        const Text('User',style: TextStyle(
          fontWeight: FontWeight.bold,fontSize: 18.0
        ),),
      ],
    );
  }
}