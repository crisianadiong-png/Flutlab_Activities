import 'package:flutter/material.dart';
import 'package:lastname_930/component/globalappbar_component.dart';
import 'package:lastname_930/component/friendcomponent.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  final List<Map<String, String>> friends = [
    {"name": "Try Try lng sir :)", "mutualFriends": "12"},
    {"name": "Try Try lng sir :)", "mutualFriends": "8"},
    {"name": "Try Try lng sir :)", "mutualFriends": "5"},
    {"name": "Try Try lng sir :)", "mutualFriends": "3"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: const GlobalAppBarComponent(appName: "Friends"),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: friends.length,
        itemBuilder: (context, index) {
          final f = friends[index];
          return FriendComponent(
              name: f["name"], mutualFriends: f["mutualFriends"]);
        },
      ),
    );
  }
}
