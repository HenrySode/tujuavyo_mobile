import 'package:flutter/material.dart';
import 'package:tujuavyo/components/color.dart';
import 'package:tujuavyo/components/onboarding_data.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = OnboardingData();
  final pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          body(),
          button(),
        ],
      ),
    );
  }

  // body
  Widget body() {
    return Expanded(
      child: Center(
        child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemCount: controller.items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //images
                    Image.asset(controller.items[currentIndex].image),

                    //titles
                    Text(
                      controller.items[currentIndex].title,
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor),
                      textAlign: TextAlign.center,
                    ),

                    //Descriptions
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        controller.items[currentIndex].description,
                        style: const TextStyle(
                          color: AppColors.subtitleColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }

//bottom dots
  // Widget buildDots() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       List.generate(
  //           controller.items.length,
  //           (index) => AnimatedContainer(
  //               margin: EdgeInsets.symmetric(horizontal: 2.0),
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(50),
  //                 color: currentIndex == index
  //                     ? AppColors.primaryColor
  //                     : AppColors.subtitleColor,
  //               ),
  //               height: 7,
  //               width: currentIndex == index ? 30 : 7,
  //               duration: const Duration(milliseconds: 700))),
  //     ],
  //   );
  // }

  Widget button() {
    return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        width: MediaQuery.of(context).size.width * 9,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.primaryColor,
        ),
        child: TextButton(
          onPressed: () {
            setState(() {
              currentIndex != controller.items.length - 1
                  ? currentIndex++
                  : Navigator.pushNamed(context, '/signin');
            });
          },
          child: Text(
            currentIndex == controller.items.length - 1
                ? 'Get Started'
                : 'Continue',
            style: const TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ));
  }
}
