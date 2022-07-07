import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_template/constants/app_colors.dart';
import 'package:flutter_basic_template/constants/app_strings.dart';
import 'package:flutter_basic_template/localizations/locale_keys.g.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.home_home_title.tr()),
      ),
      body: Column(
        children: [
          Text('List', style: TextStyle(color: white, fontSize: ScreenUtil().setSp(20))),
          Expanded(child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => ListTile(
              title: Text('Item $index',style: TextStyle(color: white),),
            ),
          )),
        ],
      )
    );
  }
}
