import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Courses Page',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
