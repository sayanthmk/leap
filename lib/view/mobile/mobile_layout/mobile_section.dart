import 'package:flutter/material.dart';
import 'package:leap/view/home/home_page.dart';
import 'package:leap/view/mobile/appbar/mobile_appbar.dart';
import 'package:leap/view/web/profile/profile.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MobileAppBar(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MainContent(isWeb: false),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: ProfileSidebar(isWeb: false),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
