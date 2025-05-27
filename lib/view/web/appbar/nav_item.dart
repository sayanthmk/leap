import 'package:flutter/material.dart';
import 'package:leap/constants/color.dart';

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
        color: isActive ? LeapColors.primaryblue : LeapColors.black,
        decoration: isActive ? TextDecoration.underline : TextDecoration.none,
        fontWeight: isActive ? FontWeight.w600 : FontWeight.w600,
        fontSize: 16,
      ),
    );
  }
}
