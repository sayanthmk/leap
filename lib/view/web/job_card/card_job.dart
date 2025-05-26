import 'package:flutter/material.dart';
import 'package:leap/view/web/job_card/job_section.dart';

class JobCard extends StatelessWidget {
  final bool isWeb;

  const JobCard({super.key, required this.isWeb});

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
          JobCardHeader(isWeb: isWeb),
          const SizedBox(height: 16),
          isWeb ? const WebJobDetails() : const MobileJobDetails(),
          const SizedBox(height: 16),
          JobDescription(isWeb: isWeb),
        ],
      ),
    );
  }
}

class JobCardHeader extends StatelessWidget {
  final bool isWeb;

  const JobCardHeader({super.key, required this.isWeb});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: isWeb ? 64 : 48,
          height: isWeb ? 64 : 48,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'US IT Technical Recruiter',
                      style: TextStyle(
                        fontSize: isWeb ? 20 : 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark_border,
                            color: Colors.grey),
                      ),
                      const Text('Save')
                    ],
                  ),
                ],
              ),
              Text(
                'Ora Apps Inc',
                style: TextStyle(
                  fontSize: isWeb ? 16 : 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
