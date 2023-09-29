import 'package:flutter/material.dart';
import 'package:perlatest/presentation/consts/colors.dart';

class CustomHint extends StatelessWidget {
  final String text;
  const CustomHint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
   //   padding: const EdgeInsets.only(right: 15, left: 15),
      child: Text(
        text,
        style: const TextStyle(
            color: AppColors.hintGrey, fontWeight: FontWeight.w500, fontSize: 16),
      ),
    );
  }
}
