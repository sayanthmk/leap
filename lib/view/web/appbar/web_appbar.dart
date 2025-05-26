import 'package:flutter/material.dart';
import 'package:leap/view/common/logo.dart';
import 'package:leap/view/common/profile_header.dart';
import 'package:leap/view/web/appbar/nav_item.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,
      child: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 70, right: 70),
          child: Row(
            children: [
              NavItem(title: 'Home', isActive: false),
              SizedBox(width: 32),
              NavItem(title: 'Search Jobs', isActive: true),
              SizedBox(width: 32),
              NavItem(title: 'Companies', isActive: false),
              SizedBox(width: 32),
              NavItem(title: 'Post Jobs', isActive: false),
              Spacer(),
              AppLogo(),
              Spacer(),
              ProfileHeader(),
            ],
          ),
        ),
      ),
    );
  }
}
