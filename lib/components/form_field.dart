import 'package:flutter/material.dart';
import 'package:tujuavyo/components/color.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  const CustomFormField({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(
          color: Colors.black38,
        ),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: AppColors.primaryColor,
        )),
      ),
    );
  }
}
