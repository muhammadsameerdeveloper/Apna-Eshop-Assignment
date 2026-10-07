import 'package:apnashop/screen/splash_view.dart';
import 'package:apnashop/utils/size_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          SizeConfig.init(context);
          return SplashView();
        },
      ),
    );
  }
}
