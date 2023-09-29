import 'package:flutter/material.dart';
import 'package:perlatest/presentation/consts/colors.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String title;
  IconData? eyeIcon;
  //final String labelText;
  final IconData icons;
  //final TextEditingController myController;
  //final String? Function(String?)? valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;
  //void Function(String value)? func;
  CustomTextFormField(
      {super.key,
      //Function(String value)? func,
       this.hintText,
      this.eyeIcon,
      //required this.labelText,
      required this.icons,
      // required this.myController,
      // required this.valid,
      required this.isNumber,
      this.obscureText,
      this.onTapIcon,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(fontSize: 16, color: Colors.black)),
          const SizedBox(height: 10),
          TextFormField(
           // onChanged: (value)=> func! (value),
            obscureText:
                obscureText == null || obscureText == false ? false : true,
            keyboardType: isNumber
                ? const TextInputType.numberWithOptions(decimal: true)
                : TextInputType.text,
            validator:(value) => null,
            //controller: myController,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(fontSize: 13),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: AppColors.fillGrey,
              prefixIcon: Icon(
                icons,
                color: AppColors.hintGrey,
              ),
              suffixIcon: InkWell(
                onTap: onTapIcon,
                child: Icon(eyeIcon),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
