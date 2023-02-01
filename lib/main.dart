import 'package:dating_ukraine/pages/auth_reg_pages/auth_reg_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'pages/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(DatingUkraine());
}

class DatingUkraine extends StatelessWidget {

  // Design color
  Color _primaryColor= HexColor('#FFC867');
  Color _accentColor= HexColor('#FF3CBD');


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider<AuthRegModel>(create: (_) => AuthRegModel()),

    ],
    child:
    MaterialApp(
      title: 'Знайомства Украхїна',
      theme: ThemeData(
        primaryColor: _primaryColor,
        scaffoldBackgroundColor: Colors.grey.shade100, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey).copyWith(secondary: _accentColor),
      ),
      home: SplashScreen(title: 'Знайомства Украхїна'),
    ));
  }
}

