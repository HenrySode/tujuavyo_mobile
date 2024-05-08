import 'package:flutter/material.dart';
import 'package:tujuavyo/components/color.dart';
import 'package:tujuavyo/pages/chat_page.dart';
import 'package:tujuavyo/pages/home.dart';
import 'package:tujuavyo/pages/home_pages/courses_page.dart';
import 'package:tujuavyo/pages/home_pages/expert_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  final pages = [
    HomePage(),
    ExpertPage(),
    const ChatPage(),
    const CoursesPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: AppColors.white.withOpacity(0.3),
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: AppColors.white.withOpacity(0.1),
          selectedIndex: index,
          animationDuration: const Duration(seconds: 1),
          onDestinationSelected: (index) => setState(() => this.index = index),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_filled),
              selectedIcon: Icon(
                Icons.home_filled,
                color: AppColors.primaryColor,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.work),
              selectedIcon: Icon(
                Icons.work,
                color: AppColors.primaryColor,
              ),
              label: 'Expert',
            ),
            NavigationDestination(
              icon: Icon(Icons.chat),
              selectedIcon: Icon(
                Icons.chat,
                color: AppColors.primaryColor,
              ),
              label: 'WeChat',
            ),
            NavigationDestination(
              icon: Icon(Icons.school),
              selectedIcon: Icon(
                Icons.school,
                color: AppColors.primaryColor,
              ),
              label: 'Courses',
            ),
          ],
        ),
      ),
    );
  }
}
