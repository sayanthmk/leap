import 'package:flutter/material.dart';
import 'package:leap/view/mobile/mobile_layout/mobile_section.dart';
import 'package:leap/view/web/job_card/job_section.dart';
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

// Web Layout Widget

// Mobile Layout Widget

// Web App Bar Widget

// Mobile App Bar Widget

// App Logo Widget

// Profile Header Widget

// Navigation Item Widget

// Main Content Widget
class MainContent extends StatelessWidget {
  final bool isWeb;

  const MainContent({Key? key, required this.isWeb}) : super(key: key);

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

// Search Section Widget
class SearchSection extends StatelessWidget {
  final bool isWeb;

  const SearchSection({Key? key, required this.isWeb}) : super(key: key);

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
      child: isWeb ? const WebSearchRow() : const MobileSearchColumn(),
    );
  }
}

// Web Search Row Widget
class WebSearchRow extends StatelessWidget {
  const WebSearchRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child:
              SearchField(hint: 'User Experience Designer', icon: Icons.search),
        ),
        SizedBox(width: 16),
        Expanded(
          child: SearchField(
              hint: 'Hyattsville', icon: Icons.location_on_outlined),
        ),
        SizedBox(width: 16),
        SearchButton(),
      ],
    );
  }
}

// Mobile Search Column Widget
class MobileSearchColumn extends StatelessWidget {
  const MobileSearchColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SearchField(hint: 'User Experience Designer', icon: Icons.search),
        SizedBox(height: 16),
        SearchField(hint: 'Hyattsville', icon: Icons.location_on_outlined),
        SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: SearchButton(),
        ),
      ],
    );
  }
}

// Search Field Widget
class SearchField extends StatelessWidget {
  final String hint;
  final IconData icon;

  const SearchField({
    Key? key,
    required this.hint,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: Icon(icon, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Color(0xFF6366F1)),
        ),
      ),
    );
  }
}

// Search Button Widget
class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF6366F1),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: const Text(
        'Search',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}

// Job Section Widget


// Profile Sidebar Widget


// Mobile Profile Buttons Widget

