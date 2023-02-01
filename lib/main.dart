import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'pages/splash_screen.dart';

void main() {
  runApp(DatingUkraine());
}

class DatingUkraine extends StatelessWidget {

  // Design color
  Color _primaryColor= HexColor('#FFC867');
  Color _accentColor= HexColor('#FF3CBD');


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Знайомства Украхїна',
      theme: ThemeData(
        primaryColor: _primaryColor,
        scaffoldBackgroundColor: Colors.grey.shade100, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey).copyWith(secondary: _accentColor),
      ),
      home: SplashScreen(title: 'Знайомства Украхїна'),
    );
  }
}

