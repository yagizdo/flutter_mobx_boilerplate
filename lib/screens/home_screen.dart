import 'package:flutter/material.dart';
import 'package:flutter_basic_template/constants/app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(homeScreenAppbarText),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World',style: Theme.of(context).textTheme.headline1,),
        ),
      ),
    );
  }
}
