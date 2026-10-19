//notification_screen.dart
import 'package:flutter/material.dart';
import 'package:lastname_930/component/globalappbar_component.dart';
import 'package:lastname_930/component/notificationcomponent.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, dynamic>> notifications = [
    {
      "username": "John Doe",
      "message": "liked your post.",
      "time": "5 minutes ago",
      "type": "like",
      "read": false,
    },
    {
      "username": "Jane Smith",
      "message": "commented on your post.",
      "time": "10 minutes ago",
      "type": "comment",
      "read": false,
    },
    {
      "username": "Michael Cruz",
      "message": "sent you a friend request.",
      "time": "20 minutes ago",
      "type": "friend_request",
      "read": true,
    },
    {
      "username": "Sarah Williams",
      "message": "shared your post.",
      "time": "1 hour ago",
      "type": "share",
      "read": true,
    },
    {
      "username": "Alex Santos",
      "message": "mentioned you in a comment.",
      "time": "2 hours ago",
      "type": "mention",
      "read": true,
    },
    {
      "username": "Emily Reyes",
      "message": "started following you.",
      "time": "3 hours ago",
      "type": "friend_request",
      "read": true,
    },
    {
      "username": "Carlos Dela Cruz",
      "message": "liked your comment.",
      "time": "4 hours ago",
      "type": "like",
      "read": true,
    },
    {
      "username": "Nicole Tan",
      "message": "replied to your comment.",
      "time": "5 hours ago",
      "type": "comment",
      "read": false,
    },
    {
      "username": "Marco Villanueva",
      "message": "shared your photo.",
      "time": "6 hours ago",
      "type": "share",
      "read": true,
    },
    {
      "username": "Grace Lim",
      "message": "mentioned you in a post.",
      "time": "8 hours ago",
      "type": "mention",
      "read": true,
    },
  ];

  IconData _iconForType(String? type) {
    switch (type) {
      case "like":
        return Icons.thumb_up_sharp;

      case "comment":
        return Icons.comment;

      case "friend_request":
        return Icons.person_add;

      case "share":
        return Icons.share;

      case "mention":
        return Icons.alternate_email;

      case "follow":
        return Icons.person;

      default:
        return Icons.notifications;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBarComponent(),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];

          return NotificationComponent(
            username: notification["username"],
            message: notification["message"],
            time: notification["time"],
            icon: _iconForType(notification["type"]),
            selected: !(notification["read"] as bool? ?? false),
          );
        },
      ),
    );
  }
}
