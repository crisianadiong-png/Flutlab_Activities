import 'package:flutter/material.dart';

class ProfileStatComponent extends StatelessWidget {
  final String? count;
  final String? label;

  const ProfileStatComponent({super.key, this.count, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count ?? "0",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(label ?? "",
            style: const TextStyle(color: Colors.grey, fontSize: 13)),
      ],
    );
  }
}
