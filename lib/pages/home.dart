import 'package:flutter/material.dart';
import 'package:tujuavyo/components/color.dart';
import 'package:tujuavyo/components/custom_nav_drawer.dart';
import 'package:tujuavyo/components/home_items.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HomeItems> homeItems = [
    HomeItems(
      itemTitle: 'Expert',
      itemDesc: 'Meet the Expert you always want',
      urlAvatar: 'assets/temp/image1.png',
    ),
    HomeItems(
      itemTitle: 'Courses',
      itemDesc: 'Choose the best course of your interest',
      urlAvatar: 'assets/temp/image2.png',
    ),
    HomeItems(
      itemTitle: 'Books',
      itemDesc: 'Check book that will boost your knowledge',
      urlAvatar: 'assets/temp/image3.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 2,
        title: const Text(
          'Tujuavyo',
          style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share_outlined,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      drawer: const CustomNavigationDrawer(),
      body: ListView.builder(
          itemCount: homeItems.length,
          itemBuilder: (context, index) => Card(
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/temp/image1.png'),
                  ),
                  title: const Text('Expert'),
                  subtitle: const Text('Hello'),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/expert');
                      },
                      icon: Icon(Icons.forward)),
                ),
              )),
    );
  }
}
