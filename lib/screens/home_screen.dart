import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_template/constants/app_strings.dart';
import 'package:flutter_basic_template/localizations/locale_keys.g.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.home_home_title.tr()),
      ),
      body: Center(
        child: Column(
          children: [
            Text(LocaleKeys.home_hello_txt.tr(),style: Theme.of(context).textTheme.headline1,),
            Text(LocaleKeys.home_home_title.tr(),style: Theme.of(context).textTheme.headline1,),
            ElevatedButton(onPressed: (){
              context.locale == Locale('en') ? context.setLocale(Locale('tr')) : context.setLocale(Locale('en'));

              print(context.locale.toString());
            }, child: Text(LocaleKeys.home_home_btn.tr()),),
          ],
        )
      ),
    );
  }
}
