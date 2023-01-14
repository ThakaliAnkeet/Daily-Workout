import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _buildDaysBar(),
        ],
      ),
    );
  }

  Container _buildDaysBar(){
    return Container(
      margin:EdgeInsets.all(10),
      width: double.infinity,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Text(
          'Today',
          style:TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
        ),
        Text(
            'Week',
            style:TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )
        ),
        Text(
            'Month',
            style:TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )
        ),
        Text(
            'Year',
            style:TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )
        ),
      ],)
    );
  }
}
