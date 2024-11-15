import 'package:flutter/material.dart';
import 'package:muscle_map/VideoPlayer.dart';
import '../screens/HomeScreen.dart';

import '../colors.dart';

class Yoga extends StatefulWidget {
  const Yoga({super.key});

  @override
  State<Yoga> createState() => _YogaState();
}

class _YogaState extends State<Yoga> {

  // Workout level functionalities will be added later
  Widget WorkoutName(String name)
  {
    return InkWell(onTap: () {  } , child: Text('\t\t\t - ${name}', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.w500, color: colors.black),));
  }
  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen())); },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        title: const Text('Yoga', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),),
        centerTitle: true,
        backgroundColor: colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Media player upper text
              Text('Tutorial', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600, color: Colors.blueAccent.shade400),),

              SizedBox(height: mq.height * 0.02,),
              // Media player
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: VideoPlayerScreen(url: 'https://youtu.be/HzznoIsFsj8?si=pbdU_tXtrGZB0eCt&t=104'),
              ),

              SizedBox(height: mq.height * 0.02,),
              // Details of workouts
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: colors.primaryGradient, begin: Alignment.bottomRight, end: Alignment.topLeft),
                    ),
                    constraints: BoxConstraints(minWidth: double.infinity, minHeight: mq.height *0.60,),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Beginner Level', style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w500, color: colors.black),),
                            WorkoutName('Warm Up (5 minutes)'),
                            WorkoutName('CatCow (2.5 minutes)'),
                            WorkoutName('Bird Dog (5 minutes)'),
                            WorkoutName('Low Lunge (5 minutes)'),
                            WorkoutName('Outro (5 minutes)'),
                            SizedBox(height: mq.height * 0.005,),
                            Text('Note: Take a 1.5-minutes rest after each workout.', style: TextStyle(fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.w500, color: colors.grey),),

                            SizedBox(height: mq.height * 0.02,),

                            Text('Intermediate Level', style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w500, color: colors.black),),
                            WorkoutName('Warm Up (7 minutes)'),
                            WorkoutName('CatCow (5 minutes)'),
                            WorkoutName('Bird Dog (9 minutes)'),
                            WorkoutName('Low Lunge (9 minutes)'),
                            WorkoutName('Outro (9 minutes)'),
                            SizedBox(height: mq.height * 0.005,),
                            Text('Note: Take a 1-minute rest after each workout.', style: TextStyle(fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.w500, color: colors.grey),),

                            SizedBox(height: mq.height * 0.02,),

                            Text('Advanced Level', style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w500, color: colors.black),),
                            WorkoutName('Warm Up (9 minutes)'),
                            WorkoutName('CatCow (7 minutes)'),
                            WorkoutName('Bird Dog (12 minutes)'),
                            WorkoutName('Low Lunge (12 minutes)'),
                            WorkoutName('Outro (12 minutes)'),
                            SizedBox(height: mq.height * 0.005,),
                            Text('Note: Take a 30-seconds rest after each workout.', style: TextStyle(fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.w500, color: colors.grey),),
                          ],
                        )
                    ),
                  )
              ),


              SizedBox(height: mq.height * 0.02,),
            ],
          ),
        ),
      ),
    );
  }
}
