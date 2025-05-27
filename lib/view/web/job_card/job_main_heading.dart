import 'package:flutter/material.dart';
import 'package:leap/controller/data_controller.dart';
import 'package:leap/view/web/job_card/card_job.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class JobSection extends StatefulWidget {
  final String title;
  final bool isWeb;

  const JobSection({
    super.key,
    required this.title,
    required this.isWeb,
  });

  @override
  State<JobSection> createState() => _JobSectionState();
}

class _JobSectionState extends State<JobSection> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PostProvider>().loadPosts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PostProvider>(builder: (context, postProvider, child) {
      if (postProvider.isLoading) {
        return Center(
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.all(widget.isWeb ? 24 : 16),
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
            ),
          ),
        );
      }

      if (postProvider.posts.isEmpty) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.work_off,
                size: 64,
                color: Colors.grey[400],
              ),
              const SizedBox(height: 16),
              Text(
                'No jobs available',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () => context.read<PostProvider>().refreshPosts(),
                child: const Text('Retry'),
              ),
            ],
          ),
        );
      }

      final jobs = postProvider.posts;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: widget.isWeb ? 24 : 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: jobs.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: widget.isWeb ? 1 : 1,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: widget.isWeb ? 5.5 : 2.5,
            ),
            itemBuilder: (context, index) {
              final job = jobs[index];
              return JobCard(
                isWeb: widget.isWeb,
                job: job,
              );
            },
          )
        ],
      );
    });
  }
}
