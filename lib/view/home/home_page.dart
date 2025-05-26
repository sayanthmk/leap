import 'package:flutter/material.dart';
import 'package:leap/view/mobile/mobile_layout/mobile_section.dart';
import 'package:leap/view/web/job_card/job_alert_section.dart';
import 'package:leap/view/web/job_card/job_main_heading.dart';
import 'package:leap/view/web/search/search.dart';
import 'package:leap/view/web/web_layout/web_section.dart';

class JobSearchPage extends StatelessWidget {
  const JobSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 768) {
            return const WebLayout();
          } else {
            return const MobileLayout();
          }
        },
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  final bool isWeb;

  const MainContent({super.key, required this.isWeb});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(isWeb ? 24 : 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchSection(isWeb: isWeb),
          const SizedBox(height: 32),
          JobSection(title: 'Recommended Jobs', isWeb: isWeb),
          const SizedBox(height: 32),
          JobSection(title: 'Suggested Jobs', isWeb: isWeb),
          const SizedBox(height: 32),
          JobAlertsSection(isWeb: isWeb),
        ],
      ),
    );
  }
}
