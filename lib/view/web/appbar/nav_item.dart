import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final String title;
  final bool isActive;

  const NavItem({
    super.key,
    required this.title,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: isActive ? const Color(0xFF6366F1) : Colors.grey[600],
        decoration: isActive ? TextDecoration.underline : TextDecoration.none,
        fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
        fontSize: 16,
      ),
    );
  }
}
