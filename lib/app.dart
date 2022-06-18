import 'package:flutter/material.dart';
import 'package:flutter_basic_template/constants/app_colors.dart';
import 'package:flutter_basic_template/constants/app_strings.dart';
import 'package:flutter_basic_template/screens/home_screen.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (BuildContext context, Widget? child) => MaterialApp(
        title: appTitle,
        theme: AppTheme().appTheme,
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        home: HomeScreen(),
      ),
    );
  }
}
