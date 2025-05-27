import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.notifications_outlined, color: Colors.grey),
        SizedBox(width: 16),
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('asset/lady.jpg'),
        ),
        SizedBox(width: 8),
        Text(
          'Hello, John Wick',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
