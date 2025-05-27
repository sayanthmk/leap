import 'package:flutter/material.dart';
import 'package:leap/view/common/logo.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              const AppLogo(),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined,
                    color: Colors.grey),
              ),
              const CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('asset/lady.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
