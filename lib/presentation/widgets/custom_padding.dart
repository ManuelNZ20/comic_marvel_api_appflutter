import 'package:flutter/material.dart';

class CustomPadding extends StatelessWidget {
  const CustomPadding({
    super.key,
    required this.child
    });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 20.0,
      ),
      child: child,
    );
  }
}
