import 'package:flutter/material.dart';

import 'package:control_gastos/congig/theme/app_theme.dart';
import 'package:control_gastos/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().miTheme(),
      home: const HomePage(),
    );
  }
}
