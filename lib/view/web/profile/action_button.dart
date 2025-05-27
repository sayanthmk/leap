import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final bool isWeb;

  const ActionButtons({super.key, required this.isWeb});

  @override
  Widget build(BuildContext context) {
    if (isWeb) {
      return const Row(
        children: [
          Expanded(child: ActionButton(text: 'Applied\nJobs')),
          SizedBox(width: 5),
          Expanded(child: ActionButton(text: 'Custom\nJob Alerts')),
        ],
      );
    } else {
      return const Column(
        children: [
          SizedBox(
            // height: 30,
            width: double.infinity,
            child: ActionButton(text: 'Applied Jobs'),
          ),
          // SizedBox(height: 1),
          SizedBox(
            width: double.infinity,
            child: ActionButton(text: 'Custom Job Alerts'),
          ),
        ],
      );
    }
  }
}

// Action Button Widget
class ActionButton extends StatelessWidget {
  final String text;

  const ActionButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final buttonHeight = screenHeight * 0.07;
    final buttonWidth = screenWidth * 0.8;
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Color(0xFF6366F1)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF6366F1),
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
