// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class StatsPage extends StatefulWidget {
//   const StatsPage({Key? key}) : super(key: key);
//
//   @override
//   State<StatsPage> createState() => _StatsPageState();
// }
//
// class _StatsPageState extends State<StatsPage> {
//   final user=FirebaseAuth.instance.currentUser!;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ListView(
//         children: [
//           _buildWorkoutStatTile('Total workouts', user.totalWorkouts.toString()),
//           _buildDivider(),
//           _buildWorkoutStatTile('Total distance', user.totalDistance.toString() + ' km'),
//           _buildDivider(),
//           _buildWorkoutStatTile('Total time', user.totalTime.toString() + ' hours'),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildWorkoutStatTile(String title, String value) {
//     return ListTile(
//       title: Text(title),
//       trailing: Text(value),
//     );
//   }
//
//   Widget _buildDivider() {
//     return Divider(
//       height: 1.0,
//       color: Colors.grey,
//     );
//   }
// }
