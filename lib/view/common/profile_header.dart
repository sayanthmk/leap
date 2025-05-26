import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.notifications_outlined, color: Colors.grey),
        SizedBox(width: 16),
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage('https://via.placeholder.com/40'),
        ),
        SizedBox(width: 8),
        Text(
          'Hello, John Wick',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
