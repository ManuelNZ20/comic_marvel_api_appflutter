import 'package:flutter/material.dart';
import 'package:marvel_comics_app/config/theme/theme_app.dart';
import 'package:marvel_comics_app/presentation/screens/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marvel comics app',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().themeData(),
      home: HomePage(),
    );
  }
}
