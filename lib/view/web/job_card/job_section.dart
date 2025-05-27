import 'package:flutter/material.dart';
import 'package:leap/model/model.dart';

class JobCardHeader extends StatelessWidget {
  final bool isWeb;
  final LeapModel? job;

  const JobCardHeader({
    super.key,
    required this.isWeb,
    this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: isWeb ? 60 : 48,
          height: isWeb ? 60 : 48,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                job?.title ?? 'Software Developer',
                style: TextStyle(
                  fontSize: isWeb ? 20 : 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
                maxLines: isWeb ? 2 : 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                'User ${job?.userId ?? 1}',
                style: TextStyle(
                  fontSize: isWeb ? 16 : 14,
                  color: Colors.grey[600],
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Job ${job?.id ?? 'Unknown'} bookmarked!'),
                duration: const Duration(seconds: 2),
              ),
            );
          },
          icon: Icon(
            Icons.bookmark_border,
            color: Colors.grey[600],
            size: isWeb ? 24 : 20,
          ),
        ),
      ],
    );
  }
}

class WebJobDetails extends StatelessWidget {
  final LeapModel? job;

  const WebJobDetails({super.key, this.job});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        JobDetailChip(
          icon: Icons.location_on_outlined,
          text: 'Remote or Hyattsville, MD, USA',
        ),
        SizedBox(width: 24),
        JobDetailChip(
          icon: Icons.work_outline,
          text: '2 to 8 yrs',
        ),
        SizedBox(width: 24),
        JobDetailChip(
          icon: Icons.attach_money,
          text: 'Not Disclosed',
        ),
      ],
    );
  }
}

class MobileJobDetails extends StatelessWidget {
  final LeapModel? job;

  const MobileJobDetails({super.key, this.job});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        JobDetailChip(
          icon: Icons.location_on_outlined,
          text: 'Remote or Hyattsville, MD, USA',
        ),
        SizedBox(height: 8),
        Row(
          children: [
            JobDetailChip(
              icon: Icons.work_outline,
              text: '2 to 8 yrs',
            ),
            SizedBox(width: 24),
            JobDetailChip(
              icon: Icons.attach_money,
              text: 'Not Disclosed',
            ),
          ],
        ),
      ],
    );
  }
}

class JobDescription extends StatelessWidget {
  final bool isWeb;
  final LeapModel? job;

  const JobDescription({
    super.key,
    required this.isWeb,
    this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      job?.body ??
          'Join our team of growing software professionals. Ever found yourself working with an open source library that is just not working...',
      style: TextStyle(
        fontSize: isWeb ? 14 : 13,
        color: Colors.grey[600],
        // height: 1.5,
      ),
      maxLines: isWeb ? 1 : 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

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
