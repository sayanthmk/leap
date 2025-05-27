import 'package:flutter/material.dart';
import 'package:leap/model/model.dart';
import 'package:leap/view/web/job_card/job_section.dart';

class JobCard extends StatelessWidget {
  final bool isWeb;
  final LeapModel? job;

  const JobCard({
    super.key,
    required this.isWeb,
    this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(isWeb ? 24 : 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          JobCardHeader(isWeb: isWeb, job: job),
          const SizedBox(height: 16),
          isWeb ? WebJobDetails(job: job) : MobileJobDetails(job: job),
          const SizedBox(height: 16),
          JobDescription(isWeb: isWeb, job: job),
        ],
      ),
    );
  }
}
