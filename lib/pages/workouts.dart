import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Workouts extends StatefulWidget {
  const Workouts({Key? key}) : super(key: key);

  @override
  State<Workouts> createState() => _WorkoutsState();
}

class _WorkoutsState extends State<Workouts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        child: Text('Add workout'),
        onPressed: () {
          // Navigate to add workout page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddWorkoutPage()),
          );
        },
      ),
    );
  }
}

class AddWorkoutPage extends StatefulWidget {
  @override
  State<AddWorkoutPage> createState() => _AddWorkoutPageState();
}

class _AddWorkoutPageState extends State<AddWorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Workout'),
      ),
      body: Container(
        // Add content to the page here
      ),
    );
  }
}
