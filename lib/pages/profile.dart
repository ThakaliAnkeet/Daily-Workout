import 'package:daily_workout/Details/statspage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final user=FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildUserInfoTile(),
        _buildDivider(),
        _buildWorkoutStatsTile(),
        _buildDivider(),
        _buildEditProfileButton(),
      ],
    );
  }

  Widget _buildUserInfoTile() {
    return ListTile(
      leading: CircleAvatar(

      ),
      title: Text(user.email!),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 1.0,
      color: Colors.grey,
    );
  }

  Widget _buildWorkoutStatsTile() {
    return ListTile(
      leading: Icon(Icons.fitness_center),
      title: Text('Workout stats'),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        setState(() {

        });
      },
    );
  }


  Widget _buildEditProfileButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        child: Text('Edit profile'),
        onPressed: () {
          // TODO: Navigate to edit profile page
        },
      ),
    );
  }
}
