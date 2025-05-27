import 'package:flutter/material.dart';
import 'package:leap/constants/color.dart';
import 'package:leap/view/web/job_card/card_job.dart';

class JobAlertsSection extends StatelessWidget {
  final bool isWeb;

  const JobAlertsSection({super.key, required this.isWeb});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Job Alerts',
              style: TextStyle(
                fontSize: isWeb ? 24 : 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'MANAGE ALERTS',
                style: TextStyle(
                    color: LeapColors.primaryblue,
                    fontWeight: FontWeight.w600,
                    fontSize: isWeb ? 14 : 12,
                    decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        JobCard(isWeb: isWeb),
      ],
    );
  }
}
