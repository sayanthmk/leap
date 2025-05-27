import 'package:flutter/material.dart';
import 'package:leap/constants/color.dart';
import 'package:leap/view/web/profile/action_button.dart';

class ProfileSidebar extends StatelessWidget {
  final bool isWeb;

  const ProfileSidebar({super.key, required this.isWeb});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      margin:
          isWeb ? const EdgeInsets.only(top: 24, right: 24) : EdgeInsets.zero,
      decoration: BoxDecoration(
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Column(
          children: [
            // Red section (top)
            Container(
              padding: EdgeInsets.all(isWeb ? 24 : 16),
              color: Colors.grey.withOpacity(0.1),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileAvatar(isWeb: isWeb),
                      Column(
                        children: [
                          ProfileInfo(isWeb: isWeb),
                          const SizedBox(height: 5),
                          isWeb
                              ? const WebProfileButtons()
                              : const MobileProfileButtons(),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),

            // Blue section (bottom)
            Container(
              padding: EdgeInsets.all(isWeb ? 24 : 16),
              color: Colors.white,
              child: Column(
                children: [
                  ProfileCompletion(isWeb: isWeb),
                  const SizedBox(height: 24),
                  ActionButtons(isWeb: isWeb),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Profile Avatar Widget
class ProfileAvatar extends StatelessWidget {
  final bool isWeb;

  const ProfileAvatar({super.key, required this.isWeb});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: isWeb ? 34 : 32,
      backgroundImage: const AssetImage('asset/lady.jpg'),
    );
  }
}

// Profile Info Widget
class ProfileInfo extends StatelessWidget {
  final bool isWeb;

  const ProfileInfo({super.key, required this.isWeb});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'John Wick Paul II',
          style: TextStyle(
            fontSize: isWeb ? 18 : 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Text(
          'Senior Data Base Analyst at\nOrr Appdata Inc',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isWeb ? 14 : 12,
            color: Colors.grey[600],
            height: 1.5,
          ),
        ),
      ],
    );
  }
}

// Web Profile Buttons Widget
class WebProfileButtons extends StatelessWidget {
  const WebProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'Edit Profile',
            style: TextStyle(
              color: LeapColors.primaryblue,
              decoration: TextDecoration.underline,
              decorationColor: LeapColors.primaryblue,
              decorationThickness: 1.5,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Update Resume',
            style: TextStyle(
              color: LeapColors.primaryblue,
              decoration: TextDecoration.underline,
              decorationColor: LeapColors.primaryblue,
              decorationThickness: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}

class MobileProfileButtons extends StatelessWidget {
  const MobileProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Edit Profile',
              style: TextStyle(
                color: LeapColors.primaryblue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
        SizedBox(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Update Resume',
              style: TextStyle(
                color: LeapColors.primaryblue,
                decoration: TextDecoration.underline,
                decorationColor: LeapColors.primaryblue,
                decorationThickness: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Profile Completion Widget
class ProfileCompletion extends StatelessWidget {
  final bool isWeb;

  const ProfileCompletion({super.key, required this.isWeb});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Profile Completion',
              style: TextStyle(
                fontSize: isWeb ? 14 : 12,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Text(
              '100%',
              style: TextStyle(
                fontSize: isWeb ? 14 : 12,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: 1.0,
          backgroundColor: Colors.grey[200],
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
        ),
        const SizedBox(height: 8),
        Text(
          'Maintain your profile 100% to get more recruiter views',
          style: TextStyle(
            fontSize: isWeb ? 12 : 10,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
