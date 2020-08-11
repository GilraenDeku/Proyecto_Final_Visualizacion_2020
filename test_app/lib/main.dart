///Main
///
/// This is the main of the project
///

import 'package:flutter/material.dart';
import 'regionesSocioeconomicasOpeningPage.dart';
import 'graficoTest.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.



  //regionSocialEconomica

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animated Charts App',
      theme: ThemeData(
        primaryColor: Color(0xffff6101),
      ),
      home: regionSocialEconomica(),
    );
  }
}