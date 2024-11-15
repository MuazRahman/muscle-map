import 'package:flutter/material.dart';
import 'package:muscle_map/VideoPlayer.dart';
import '../screens/HomeScreen.dart';

import '../colors.dart';

class WeightLose extends StatefulWidget {
  const WeightLose({super.key});

  @override
  State<WeightLose> createState() => _WeightLose();
}

class _WeightLose extends State<WeightLose> {

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
        title: const Text('WeightLose', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),),
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
                child: VideoPlayerScreen(url: 'https://www.youtube.com/watch?v=digpucxFbMo&t=68s'),
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
                            WorkoutName('Jumping Jack (10 Reps - 1 Set)'),
                            WorkoutName('Mountain Climber (10 Reps - 1 Set)'),
                            WorkoutName('Elbow Plank (10 Reps - 1 Set)'),
                            WorkoutName('Flutter Kicks (10 Reps - 1 Set)'),
                            WorkoutName('High Knees (10 Reps - 1 Set)'),
                            WorkoutName('Russian Twists (10 Reps - 1 Set)'),
                            WorkoutName('Leg Tuck Ins (10 Reps - 1 Set)'),
                            WorkoutName('Bicycle Crunches (10 Reps - 1 Set)'),
                            SizedBox(height: mq.height * 0.005,),
                            Text('Note: Take a 1.5-minutes rest after each workout.', style: TextStyle(fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.w500, color: colors.grey),),

                            SizedBox(height: mq.height * 0.02,),

                            Text('Intermediate Level', style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w500, color: colors.black),),
                            WorkoutName('Jumping Jack (10 Reps - 2 Set)'),
                            WorkoutName('Mountain Climber (10 Reps - 2 Set)'),
                            WorkoutName('Elbow Plank (10 Reps - 2 Set)'),
                            WorkoutName('Flutter Kicks (10 Reps - 2 Set)'),
                            WorkoutName('High Knees (10 Reps - 2 Set)'),
                            WorkoutName('Russian Twists (10 Reps - 2 Set)'),
                            WorkoutName('Leg Tuck Ins (10 Reps - 2 Set)'),
                            WorkoutName('Bicycle Crunches (10 Reps - 2 Set)'),
                            SizedBox(height: mq.height * 0.005,),
                            Text('Note: Take a 2-minute rest after each workout set.', style: TextStyle(fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.w500, color: colors.grey),),

                            SizedBox(height: mq.height * 0.02,),

                            Text('Advanced Level', style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w500, color: colors.black),),
                            WorkoutName('Jumping Jack (15 Reps - 2 Set)'),
                            WorkoutName('Mountain Climber (15 Reps - 2 Set)'),
                            WorkoutName('Elbow Plank (15 Reps - 2 Set)'),
                            WorkoutName('Flutter Kicks (15 Reps - 2 Set)'),
                            WorkoutName('High Knees (15 Reps - 2 Set)'),
                            WorkoutName('Russian Twists (15 Reps - 2 Set)'),
                            WorkoutName('Leg Tuck Ins (15 Reps - 2 Set)'),
                            WorkoutName('Bicycle Crunches (10 Reps - 2 Set)'),
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
