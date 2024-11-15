import 'package:flutter/material.dart';
import '../screens/HomeScreen.dart';
import '../colors.dart';

class CircuitTraining extends StatelessWidget {
  const CircuitTraining({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));},
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
        title: Text('Circuit Training', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),),
        centerTitle: true,
        backgroundColor: colors.white,
      ),
      body: Center(child: Text('Circuit Training'),),
    );
  }
}