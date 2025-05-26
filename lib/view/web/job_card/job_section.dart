import 'package:flutter/material.dart';

class WebJobDetails extends StatelessWidget {
  const WebJobDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        JobDetailChip(
            icon: Icons.location_on_outlined,
            text: 'Remote or Hyattsville, MD, USA'),
        SizedBox(width: 24),
        JobDetailChip(icon: Icons.work_outline, text: '2 to 8 yrs'),
        SizedBox(width: 24),
        JobDetailChip(icon: Icons.attach_money, text: 'Not Disclosed'),
      ],
    );
  }
}

// Mobile Job Details Widget
class MobileJobDetails extends StatelessWidget {
  const MobileJobDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        JobDetailChip(
            icon: Icons.location_on_outlined,
            text: 'Remote or Hyattsville, MD, USA'),
        SizedBox(height: 8),
        Row(
          children: [
            JobDetailChip(icon: Icons.work_outline, text: '2 to 8 yrs'),
            SizedBox(width: 24),
            JobDetailChip(icon: Icons.attach_money, text: 'Not Disclosed'),
          ],
        ),
      ],
    );
  }
}

// Job Detail Chip Widget
class JobDetailChip extends StatelessWidget {
  final IconData icon;
  final String text;

  const JobDetailChip({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: Colors.grey[600]),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

// Job Description Widget
class JobDescription extends StatelessWidget {
  final bool isWeb;

  const JobDescription({super.key, required this.isWeb});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Join our team of growing software professionals Ever found yourself working with an open source library that is just not working...',
      style: TextStyle(
          fontSize: isWeb ? 14 : 13,
          color: Colors.grey[600],
          height: 1.5,
          overflow: TextOverflow.ellipsis),
    );
  }
}
