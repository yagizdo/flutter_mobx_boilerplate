import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_template/localizations/codegen_loader.g.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      path: 'lib/localizations',
      supportedLocales: [
        Locale('en'),
        Locale('tr'),
      ],
      assetLoader: CodegenLoader(),
      fallbackLocale: Locale('en'),
      child: MyApp(),
    ),
  );
}
