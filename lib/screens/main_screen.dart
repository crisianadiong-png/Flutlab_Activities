import 'package:flutter/material.dart';
import 'package:lastname_930/screens/friends_screen.dart';
import 'package:lastname_930/screens/newsfeed_screen.dart';
import 'package:lastname_930/screens/notification_screen.dart';
import 'package:lastname_930/screens/profile_screen1.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> pages = const [
    NewsfeedScreen(),
    FriendsScreen(),
    NotificationScreen(),
    ProfileScreen1(),
  ];

  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentpage,
        onTap: (index) {
          setState(() {
            currentpage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.person),
              label: 'Friends'),
          BottomNavigationBarItem(
              backgroundColor: Color(0x97d561ea),
              icon: Icon(Icons.notification_add),
              label: 'Notification'),
          BottomNavigationBarItem(
              backgroundColor: Colors.lime,
              icon: Icon(Icons.person_2),
              label: 'Profile'),
        ],
      ),
    );
  }
}
