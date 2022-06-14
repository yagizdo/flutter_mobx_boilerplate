import 'package:flutter/material.dart';
import 'package:flutter_basic_template/constants/app_colors.dart';
import 'package:flutter_basic_template/constants/app_strings.dart';
import 'package:flutter_basic_template/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: AppTheme().appTheme,
      home: HomeScreen(),
    );
  }
}
