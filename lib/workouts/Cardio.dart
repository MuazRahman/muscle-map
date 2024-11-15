import 'package:flutter/material.dart';
import 'package:muscle_map/VideoPlayer.dart';
import '../screens/HomeScreen.dart';

import '../colors.dart';

class Cardio extends StatefulWidget {
  const Cardio({super.key});

  @override
  State<Cardio> createState() => _CardioState();
}

class _CardioState extends State<Cardio> {

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
        title: const Text('Cardio', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),),
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
                child: VideoPlayerScreen(url: 'https://youtu.be/dj03_VDetdw?si=C0M0eGYVvfuKpPZC&t=51'),
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
                            WorkoutName('High Knees (15 seconds)'),
                            WorkoutName('Spot Jumps (15 seconds)'),
                            WorkoutName('Mountain Climbers (15 seconds)'),
                            WorkoutName('Dropping Jacks (15 seconds)'),
                            WorkoutName('Jumping Jacks (15 seconds)'),
                            WorkoutName('Squat Jump (15 seconds)'),
                            WorkoutName('Burpee (15 seconds)'),
                            SizedBox(height: mq.height * 0.005,),
                            Text('Note: Take a 30-second rest after each workout.', style: TextStyle(fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.w500, color: colors.grey),),

                            SizedBox(height: mq.height * 0.02,),

                            Text('Intermediate Level', style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w500, color: colors.black),),
                            WorkoutName('High Knees (30 seconds)'),
                            WorkoutName('Spot Jumps (30 seconds)'),
                            WorkoutName('Mountain Climbers (30 seconds)'),
                            WorkoutName('Dropping Jacks (30 seconds)'),
                            WorkoutName('Jumping Jacks (30 seconds)'),
                            WorkoutName('Squat Jump (30 seconds)'),
                            WorkoutName('Burpee (30 seconds)'),
                            SizedBox(height: mq.height * 0.005,),
                            Text('Note: Take a 1-minute rest after each workout.', style: TextStyle(fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.w500, color: colors.grey),),

                            SizedBox(height: mq.height * 0.02,),

                            Text('Advanced Level', style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w500, color: colors.black),),
                            WorkoutName('High Knees (45 seconds)'),
                            WorkoutName('Spot Jumps (45 seconds)'),
                            WorkoutName('Mountain Climbers (45 seconds)'),
                            WorkoutName('Dropping Jacks (45 seconds)'),
                            WorkoutName('Jumping Jacks (45 seconds)'),
                            WorkoutName('Squat Jump (45 seconds)'),
                            WorkoutName('Burpee (45 seconds)'),
                            SizedBox(height: mq.height * 0.005,),
                            Text('Note: Take a 2-minutes rest after each workout.', style: TextStyle(fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.w500, color: colors.grey),),
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