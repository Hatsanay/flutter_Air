import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Components/Page/Home.dart';
import 'Language/Translations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: translations(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      home: const Home(),
    );
  }
}
