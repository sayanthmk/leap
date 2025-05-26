import 'package:flutter/material.dart';
import 'package:leap/view/web/job_card/card_job.dart';

class JobSection extends StatelessWidget {
  final String title;
  final bool isWeb;

  const JobSection({
    super.key,
    required this.title,
    required this.isWeb,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: isWeb ? 24 : 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16),
        JobCard(isWeb: isWeb),
      ],
    );
  }
}
