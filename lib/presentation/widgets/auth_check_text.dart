import 'package:flutter/material.dart';
import 'package:perlatest/presentation/consts/colors.dart';

class AuthCheckText extends StatelessWidget {
  final String txt;
  final void Function() onTap;
  final String inkwellText;

  const AuthCheckText({super.key, required this.txt, required this.onTap, required this.inkwellText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(txt, style: const TextStyle(color: AppColors.hintGrey, fontSize: 14, fontWeight: FontWeight.w400),),
          InkWell(
            onTap: onTap,
            child:
                Text(inkwellText, style: const TextStyle(color: AppColors.purple)),
          )
        ],
      ),
    );
  }
}
