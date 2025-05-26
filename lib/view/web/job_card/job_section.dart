import 'package:flutter/material.dart';

class JobSection extends StatelessWidget {
  final String title;
  final bool isWeb;

  const JobSection({
    Key? key,
    required this.title,
    required this.isWeb,
  }) : super(key: key);

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
            color: Colors.red,
          ),
        ),
        const SizedBox(height: 16),
        JobCard(isWeb: isWeb),
      ],
    );
  }
}

// Job Alerts Section Widget
class JobAlertsSection extends StatelessWidget {
  final bool isWeb;

  const JobAlertsSection({Key? key, required this.isWeb}) : super(key: key);

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
                  color: const Color(0xFF6366F1),
                  fontWeight: FontWeight.w600,
                  fontSize: isWeb ? 14 : 12,
                ),
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

// Job Card Widget
class JobCard extends StatelessWidget {
  final bool isWeb;

  const JobCard({Key? key, required this.isWeb}) : super(key: key);

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

// Job Card Header Widget
class JobCardHeader extends StatelessWidget {
  final bool isWeb;

  const JobCardHeader({Key? key, required this.isWeb}) : super(key: key);

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
                      Text('Save')
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

// Web Job Details Widget
class WebJobDetails extends StatelessWidget {
  const WebJobDetails({Key? key}) : super(key: key);

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
  const MobileJobDetails({Key? key}) : super(key: key);

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
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

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

  const JobDescription({Key? key, required this.isWeb}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Join our team of growing software professionals Ever found yourself working with an open source library that is just not working...',
      style: TextStyle(
        fontSize: isWeb ? 14 : 13,
        color: Colors.grey[600],
        height: 1.5,
      ),
    );
  }
}
