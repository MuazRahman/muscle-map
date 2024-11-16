import 'package:flutter/material.dart';

import '../colors.dart';
import 'SignUpScreen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background color of StartScreen
          Positioned(
            width: mq.width,
            height: mq.height,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: colors.primaryGradient, begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
              ),),
          // Centered title
          Positioned(
            top: 0,
            bottom: mq.height * 0.20,
            left: 0,
            right: 0,
            child: Center(
              child: RichText(
                text: TextSpan(
                    style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold, fontSize: 30, color: colors.black),
                    children: const [
                      TextSpan(text: 'Muscle'),
                      TextSpan(text: 'Map', style: TextStyle(color: Colors.white))]
                ),),
            ),
          ),
          // sub title
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: mq.height * 0.12,
              child: Center(
                child: Text('Explore Workouts, Build Strength',
                  style: TextStyle(fontFamily: 'Poppins',color: colors.grey, fontWeight: FontWeight.w400, fontSize: 16),),),),
          //Get Started button
          Positioned(
              left: mq.width * .10,
              bottom: mq.height * .08,
              width: mq.width * .80,
              height: mq.height * .07,
              child: ElevatedButton(
                onPressed: () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) => const SignUpScreen())); },
                style: ElevatedButton.styleFrom(elevation: 2, backgroundColor: Colors.white,),
                child: Text('Get Started', style: TextStyle(fontFamily: 'Poppins',fontSize: 20,fontWeight: FontWeight.bold,color: colors.primayColor1,),),

              )),
        ],
      ),
    );
  }
}

