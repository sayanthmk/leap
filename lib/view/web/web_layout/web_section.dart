import 'package:flutter/material.dart';
import 'package:leap/view/home/home_page.dart';
import 'package:leap/view/web/profile/profile.dart';
import 'package:leap/view/web/appbar/web_appbar.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        WebAppBar(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 40.0, right: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: MainContent(isWeb: true),
                ),
                SizedBox(width: 24),
                Expanded(
                  flex: 1,
                  child: ProfileSidebar(isWeb: true),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
