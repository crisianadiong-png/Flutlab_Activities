import 'package:flutter/material.dart';
import 'package:lastname_930/component/newsfeedcomponent.dart';
import 'package:lastname_930/component/globalappbar_component.dart';
import 'package:lastname_930/component/mydaycomponent.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {
  final List<MyDayStory> stories = [
    MyDayStory(
      name: 'Create story',
      image: 'assets/img/img1.jpg',
      isCreateStory: true,
    ),
    MyDayStory(name: 'Jerome Cabugwason', image: 'assets/img/img1.jpg'),
    MyDayStory(name: 'Eiman Noël Pasadilla', image: 'assets/img/img1.jpg'),
    MyDayStory(name: 'Jubert Bodiola', image: 'assets/img/img2.jpg'),
    MyDayStory(name: 'Kristoffer Ryan...', image: 'assets/img/img2.jpg'),
    MyDayStory(name: 'Joeffrey Balbuena', image: 'assets/img/img1.jpg'),
  ];

  final List<Map<String, String>> newsfeed = [
    {
      "username": "John Doe",
      "timeposted": "2 hours ago",
      "status": "Having a great day!",
      "likes": "120",
      "comments": "25",
      "shares": "10",
    },
    {
      "username": "Jane Smith",
      "timeposted": "1 hours ago",
      "status": "Learning Flutter is fun!",
      "likes": "250",
      "comments": "40",
      "shares": "15",
    },
    {
      "username": "Michael Cruz",
      "timeposted": "6 hours ago",
      "status": "Working on my new project.",
      "likes": "89",
      "comments": "12",
      "shares": "4",
    },
    {
      "username": "Alex Santos",
      "timeposted": "10 hours ago",
      "status": "Flutter development today!",
      "likes": "300",
      "comments": "50",
      "shares": "20",
    },
    {
      "username": "John Doe",
      "timeposted": "2 hours ago",
      "status": "Having a great day!",
      "likes": "120",
      "comments": "25",
      "shares": "10",
    },
    {
      "username": "Jane Smith",
      "timeposted": "5 hours ago",
      "status": "Learning Flutter is fun!",
      "likes": "250",
      "comments": "40",
      "shares": "15",
    },
    {
      "username": "Michael Cruz",
      "timeposted": "1 day ago",
      "status": "Working on my new project.",
      "likes": "89",
      "comments": "12",
      "shares": "4",
    },
    {
      "username": "Alex Santos",
      "timeposted": "3 days ago",
      "status": "Flutter development today!",
      "likes": "300",
      "comments": "50",
      "shares": "20",
    },
    {
      "username": "Maria Reyes",
      "timeposted": "6 days ago",
      "status": "Coffee and code, best combo.",
      "likes": "175",
      "comments": "30",
      "shares": "8",
    },
    {
      "username": "Carlos Dela Cruz",
      "timeposted": "1 week ago",
      "status": "Finally fixed that bug!",
      "likes": "410",
      "comments": "60",
      "shares": "25",
    },
    {
      "username": "Ella Ramos",
      "timeposted": "2 weeks ago",
      "status": "Weekend hike was amazing.",
      "likes": "95",
      "comments": "18",
      "shares": "3",
    },
    {
      "username": "Ryan Torres",
      "timeposted": "3 weeks ago",
      "status": "Started a new Flutter course.",
      "likes": "210",
      "comments": "35",
      "shares": "12",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBarComponent(),
      body: Column(
        children: [
          MyDayPageView(
            stories: stories,
            onCreateStory: () {
              debugPrint('Create story');
            },
            onStoryTap: (story) {
              debugPrint('Open ${story.name}');
            },
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: newsfeed.length,
              itemBuilder: (context, index) {
                final post = newsfeed[index];

                return Newsfeedcomponent(
                  username: post["username"],
                  timeposted: post["timeposted"],
                  status: post["status"],
                  numberoflikes: post["likes"],
                  numberofcomments: post["comments"],
                  numberofshares: post["shares"],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
