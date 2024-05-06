// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tujuavyo/components/color.dart';

class ExpertPage extends StatelessWidget {
  ExpertPage({super.key});

  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.primaryColor,
          elevation: 2,
          title: const Text(
            'Serach for expert',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.indigo,
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  height: height * 0.25,
                  width: width,
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          // InkWell(
                          //   onTap: () {},
                          // )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  height: height * 0.70,
                  width: width,
                )
              ],
            ),
          ),
        ));
  }
}
