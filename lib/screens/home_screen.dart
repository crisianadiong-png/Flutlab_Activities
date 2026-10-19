import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "High Again! ",
            style: TextStyle(color: Colors.red),
          ),
          Text(
            "Oh my Days ",
            style: TextStyle(color: Colors.red),
          ),
          Row(
            children: [
              Text(
                "High Again! ",
                style: TextStyle(color: Color(0xff54c123)),
              ),
              SizedBox(width: 60),
              Text(
                "Oh my Days ",
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(
                height: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}
