import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.suffixIcon});

  final String hintText;

  final TextInputType textInputType;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: TextFormField(
        keyboardType: textInputType,
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            suffixIconColor: Color(0xFF949D9E),
            filled: true,
            fillColor: Color(0xFFF9FAFA),
            hintText: hintText,
            hintStyle: TextStyles.bold13.copyWith(
              color: Color(0xFF949D9E),
            ),
            border: buildBorder(),
            enabledBorder: buildBorder()),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          width: 1,
          color: Color(0xffE6E9E9),
        ));
  }
}
