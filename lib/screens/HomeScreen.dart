import 'package:flutter/material.dart';
import '../workouts/Cardio.dart';
import '../workouts/Yoga.dart';
import '../workouts/WeightLose.dart';
import '../workouts/WeightGain.dart';
import '../workouts/StrengthTraining.dart';
import '../workouts/CircuitTraining.dart';
import '../colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget WorkoutCat(String workoutName, int Index){

      return InkWell(
        onTap: () {
          if(Index == 0) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Cardio()));
          }
          if(Index == 1) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Yoga()));
          }
          if(Index == 2) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WeightLose()));
          }
          if(Index == 3) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WeightGain()));
          }
          if(Index == 4) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StrengthTraining()));
          }
          if(Index == 5) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CircuitTraining()));
          }
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(alignment: Alignment.center,
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.1,
            decoration: BoxDecoration(
              color: Colors.white70, // Card color
              borderRadius: BorderRadius.circular(16), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 2,
                  offset: Offset(0, 3),
                ),],
            ),
            child: Text(workoutName, style: TextStyle(fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.bold, color: colors.black,),textAlign: TextAlign.center,),
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: colors.white,
      appBar: AppBar(
        title: Text('Home', style: TextStyle(fontFamily: 'Poppins', color: colors.black, fontSize: 22, fontWeight: FontWeight.w600),),
        centerTitle: true,
        backgroundColor: colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, color: colors.grey,), label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.favorite, color: colors.grey,), label: 'Favorite',),
            BottomNavigationBarItem(icon: Icon(Icons.person,  color: colors.grey,), label: 'Account',),
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Choose your Workout', style: TextStyle(fontFamily: 'Poppins', fontSize: 22, fontWeight: FontWeight.w500),),

            WorkoutCat('Cardio', 0),
            WorkoutCat('Yoga', 1),
            WorkoutCat('Weight Lose', 2),
            WorkoutCat('Weight Gain', 3),
            WorkoutCat('Strength Training', 4),
            WorkoutCat('Circuit Training', 5),
          ],
        ),
      ),
    );
  }
}
