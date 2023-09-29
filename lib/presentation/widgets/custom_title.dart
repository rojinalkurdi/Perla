import 'package:flutter/material.dart';
import 'package:perlatest/presentation/consts/colors.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  const CustomTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return 
     Container(
     // padding: const EdgeInsets.only(right: 15, left: 15),
      margin: const EdgeInsets.only(top: 25),
       child: Text(
          text,
          style:const TextStyle(color: AppColors.purple, fontWeight: FontWeight.w500, fontSize: 24),
     
         ),
     );
  }
}
