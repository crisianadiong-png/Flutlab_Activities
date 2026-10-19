import 'dart:html';

import 'package:flutter/material.dart';

class Activity1Screen extends StatefulWidget {
  const Activity1Screen({Key? key}) : super(key: key);

  @override
  State<Activity1Screen> createState() => _Activity1ScreenState();
}

class _Activity1ScreenState extends State<Activity1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Activity 1")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60),
          Text(
            "Activity 1",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xff003693),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Follow this layout step by step",
            style: TextStyle(fontSize: 14, color: Colors.red),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Crisian'),
              SizedBox(
                width: 40,
              ),
              Text('Adiong'),
            ],
          ),
          SizedBox(height: 30),
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
                color: Colors.yellow, borderRadius: BorderRadius.circular(20)),
            alignment: Alignment.center,
            child: Text('Container'),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.center,
                child: Text('Container'),
              ),
              SizedBox(width: 20),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.center,
                child: Text('Container'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
