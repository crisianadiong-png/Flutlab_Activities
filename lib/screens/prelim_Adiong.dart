import 'package:flutter/material.dart';

class PrelimAdiong extends StatefulWidget {
  const PrelimAdiong({Key? key}) : super(key: key);

  @override
  State<PrelimAdiong> createState() => _PrelimAdiongState();
}

class _PrelimAdiongState extends State<PrelimAdiong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF7FF),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Prelim Exam',
                style: TextStyle(
                  color: Color(0xFF03A9F4),
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Crisian Cloud Adiong',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 24),
              Container(
                width: 140,
                height: 140,
                color: Color(0xfff709d7),
                alignment: Alignment.center,
                child: Text('kiboloy'),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 140,
                    height: 140,
                    color: Color(0xff03a705),
                    alignment: Alignment.center,
                    child: Text('gagamboy'),
                  ),
                  SizedBox(width: 18),
                  Container(
                    width: 140,
                    height: 140,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text('jonathan'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
