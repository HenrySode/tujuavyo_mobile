import 'package:flutter/material.dart';
import 'package:tujuavyo/components/color.dart';

class CustomButton extends StatelessWidget {
  final double height, width;
  final bool isPrimary;
  final Function onPressed;
  final String text;

  const CustomButton({
    super.key,
    required this.height,
    required this.width,
    required this.isPrimary,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: isPrimary ? AppColors.primaryColor : Colors.transparent,
        boxShadow: isPrimary
            ? const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ]
            : [],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isPrimary ? Colors.transparent : AppColors.primaryColor,
        ),
      ),
      child: MaterialButton(
        onPressed: () => onPressed(),
        child: Text(
          text,
          style: TextStyle(
            color: isPrimary ? Colors.white : AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
