import 'package:daily_workout/auth/auth_page.dart';
import 'package:daily_workout/auth/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          _buildSettingItem('Account', Icons.person, () {
            // TODO: Navigate to account settings page
          }),
          _buildSettingItem('Notifications', Icons.notifications, () {
            // TODO: Navigate to notification settings page
          }),
          _buildSettingItem('About', Icons.info, () {
            // TODO: Navigate to about page
          }),
          _buildSettingItem('Sign out', Icons.exit_to_app, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AuthPage()),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildSettingItem(String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}
