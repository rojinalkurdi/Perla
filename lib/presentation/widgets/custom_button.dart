import 'package:flutter/material.dart';
import 'package:perlatest/presentation/consts/colors.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustomButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: double.infinity,
      height: 45,
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColors.purple,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Text(text),
    ));
  }
}
