import 'package:flutter/material.dart';
import 'package:tujuavyo/components/color.dart';
import 'package:tujuavyo/components/custom_nav_drawer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 2,
        title: Text(
          title,
          style: const TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700),
        ),
        actions: actions,
      ),
      drawer: const CustomNavigationDrawer(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(900);
}
