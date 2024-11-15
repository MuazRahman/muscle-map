import 'package:flutter/material.dart';
import 'package:muscle_map/screens/StartScreen.dart';
import 'colors.dart';

late Size mq;

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: colors.white)
      ),
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}

